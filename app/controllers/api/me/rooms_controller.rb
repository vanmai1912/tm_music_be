class Api::Me::RoomsController < Api::ApplicationController

  def index
    public_rooms = Room.where(user_id: nil)
    private_rooms = Room.where(user_id: @current_user.id)
    render json: {
      public_rooms: public_rooms,
      private_rooms: private_rooms
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

  private
  
    def room_params
      params.permit(:name, :url, :total_time, :description)
    end
end
