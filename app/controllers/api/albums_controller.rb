class Api::AlbumsController < Api::ApplicationController
  def index
    singers = Artist.singer
    render json: { test: @current_user }
  end
end
