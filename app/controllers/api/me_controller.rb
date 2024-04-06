class Api::MeController < Api::ApplicationController
  def index 
    render json: @current_user, serializer: ClientSerializer
  end

end