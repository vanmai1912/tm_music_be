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
        name: room.name
      }
      stream_from "room_channel_#{room.id}"
      ActionCable.server.broadcast("room_channel_#{room.id}", { user: user_data, room: room_data, total_user: total_user})
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
        name: room.name
      }
      stop_all_streams
      ActionCable.server.broadcast("room_channel_#{room.id}", { user: user_data, room: room_data, total_user: total_user})
    else
      reject 
    end
    # Any cleanup needed when channel is unsubscribed
  end
end
