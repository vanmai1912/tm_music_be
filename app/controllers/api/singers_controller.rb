class Api::SingersController < Api::ApplicationController
  def index
    singers = Artist.singer
    render json: singers, each_serializer: ArtistSerializer, is_song: false
  end

  def show 
    singer = Artist.find(params[:id])
    render json: singer, each_serializer: ArtistSerializer, is_song: true
  end

  def albums
    singers = Artist.includes(:albums).singer.where(id: params[:ids])
    render json: singers, each_serializer: ArtistSerializer, include: 'albums'
  end

end
