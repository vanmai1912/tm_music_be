class Api::Me::RoomsController < Api::ApplicationController

  def index
    public_rooms = Room.where.not(user_id: @current_user.id)
    private_rooms = Room.where(user_id: @current_user.id)
    public_rooms_with_users = public_rooms.includes(:user).map do |room|
      {
        id: room.id,
        name: room.name,
        description: room.description,
        total_time: room.total_time,
        url: room.url,
        user_id: room.user_id,
        uuid: room.uuid,
        user_name: room.user.first_name + ' ' +  room.user.last_name
      }
    end
  
    private_rooms_with_users = private_rooms.includes(:user).map do |room|
      {
        id: room.id,
        name: room.name,
        description: room.description,
        total_time: room.total_time,
        url: room.url,
        user_id: room.user_id,
        uuid: room.uuid,
        user_name: room.user.first_name + ' ' +  room.user.last_name
      }
    end
    render json: {
      public_rooms: public_rooms_with_users,
      private_rooms: private_rooms_with_users
    }, status: :ok
  end

  def create
    room = @current_user.rooms.new(room_params)
    if room.save
      render json: room.reload, serializer: RoomSerializer,  status: :created
    else
      render json: { error: 'Không thể tạo phòng' }, status: :unprocessable_entity 
    end
  end

  def destroy
    room = @current_user.rooms.where(uuid: params[:id]).first
    if room 
      room.destroy
      render json: { success: 'Đã xóa thành công' }, status: :ok 
    else
      render json: { error: 'Có lỗi xảy ra, vui lòng thử lại' }, status: :unprocessable_entity 
    end
  end

  def songs 
    room = Room.where(uuid: params[:id]).first
    songs = room.user.albums.favorite&.first&.songs
    render json: songs
  end

  private
  
    def room_params
      params.permit(:name, :url, :total_time, :description)
    end
end
