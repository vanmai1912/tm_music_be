class Api::Me::RoomsController < Api::ApplicationController

  def index
    rooms = Room.where(user_id: [@current_user.id, nil])
    render json: rooms, status: :ok
  end

end
