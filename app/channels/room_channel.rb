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
      song = Song.find_by_audio(room.url)
      artist = song.artists.singer.first
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
        song_title: song ? song.title : '',
        song_singer: artist ? artist.name : '',
        current_time: calculate_time_difference(room),
        owner_id: room.user ? room.user.id : -100
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
      song = Song.find_by_audio(room.url)
      artist = song.artists.singer.first
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
        song_title: song ? song.title : '',
        song_singer: artist ? artist.name : '',
        current_time: calculate_time_difference(room),
        owner_id: room.user ? room.user.id : -100
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
      total_time = data['total_time']
      room.update(url: url, total_time: total_time)
      song = Song.find_by_audio(room.url)
      artist = song.artists.singer.first
      room_data = {
        id: room.id,
        name: room.name,
        url: room.url,
        song_title: song ? song.title : '',
        song_singer: artist ? artist.name : '',
        current_time: 1
      }
      ActionCable.server.broadcast("room_channel_#{room.id}", { type: 'change_url', room: room_data })
    else
      reject 
    end
  end

  private

  def calculate_time_difference(room)
    # Kiểm tra xem total_time có tồn tại không
    return 0 if !room.total_time.present? || room.total_time == 0
  
    current_time = Time.now.in_time_zone(room.updated_at.time_zone)
    time_difference = current_time - room.updated_at
    remainder = time_difference % room.total_time
    remainder = remainder.ceil
  
    return remainder
  end
  
end
