class Api::SingersController < Api::ApplicationController
  def index
    singers = Artist.singer
    render json: { test: 'test' }
  end
end
