class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    user_id = params['user_id']
    room = Room.where(uuid: params['uuid']).first
    if room && user_id
      user_room = UserRoom.where(user_id: user_id, room_id: room.id)
      if user_room.size > 0
        user_room.first.online!
      else
        room.user_rooms.online.create(user_id: user_id)
      end
      user = User.find(params['user_id'])
      total_user = room.user_rooms.online.size
      user_data = {
        id: user.id,
        first_name: user.first_name,
        last_name: user.last_name,
        image: user.image
      }
      room_data = {
        id: room.id,
        name: room.name,
        url: room.url,
        current_time: room.calculate_time_difference,
        owner_id: room.user ? room.user .id : -100
      }
      stream_from "room_channel_#{room.id}"
      ActionCable.server.broadcast("room_channel_#{room.id}", { user: user_data, room: room_data, total_user: total_user })
    else
      reject 
    end
  end

  def unsubscribed
    user_id = params['user_id']
    room = Room.where(uuid: params['uuid']).first
    if room && user_id
      user_room = UserRoom.where(user_id: user_id, room_id: room.id).first.offline!
      user = User.find(params['user_id'])
      total_user = room.user_rooms.online.size
      user_data = {
        id: user.id,
        first_name: user.first_name,
        last_name: user.last_name,
        image: user.image
      }
      room_data = {
        id: room.id,
        name: room.name,
        url: room.url,
        current_time: room.calculate_time_difference,
        owner_id: room.user ? room.user .id : -100
      }
      stop_all_streams
      ActionCable.server.broadcast("room_channel_#{room.id}", { user: user_data, room: room_data, total_user: total_user })
    else
      reject 
    end
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    puts "receive BY SERVER: #{data}" 
    parsed_data = JSON.parse(data)
    command = parsed_data["command"]
    room = Room.find_by(uuid: parsed_data['identifier']['uuid'])

    case command
    when "receive"
      room_channel_id = parsed_data["identifier"]["channel"]
      content = parsed_data["data"]["text"]
      ActionCable.server.broadcast("room_channel_#{room.id}", 'đã gởi rồi nè')
    else
      puts "Unrecognized command: #{command}"
    end
  end

  def chat_message(data)
    room = Room.where(uuid: params['uuid']).first
    user_id = params['user_id']
    
    if room && user_id
      user = User.find(user_id)
      message = data['text']
      room.chat_rooms.create(user_id: user.id, content: message)
      user_data = {
        id: user.id,
        first_name: user.first_name,
        last_name: user.last_name,
        image: user.image,
        message: message
      }
      ActionCable.server.broadcast("room_channel_#{room.id}", { type: 'chat_message', user_data: user_data })
    else
      reject 
    end
  end  

  def change_url(data)
    room = Room.where(uuid: params['uuid']).first
    user_id = params['user_id']
    
    if room && user_id
      user = User.find(user_id)
      url = data['url']
      room.update(url: url)
      room_data = {
        id: room.id,
        name: room.name,
        url: room.url,
        current_time: 1
      }
      ActionCable.server.broadcast("room_channel_#{room.id}", { type: 'change_url', room: room_data })
    else
      reject 
    end
  end
  
end
