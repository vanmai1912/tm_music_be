class Api::Me::RoomsController < Api::ApplicationController

  def index
    public_rooms = Room.where(user_id: nil)
    private_rooms = Room.where(user_id: @current_user.id)
    render json: {
      public_rooms: public_rooms,
      private_rooms: private_rooms
    }, status: :ok
  end

end
