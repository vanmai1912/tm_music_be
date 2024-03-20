class Api::AlbumsController < Api::ApplicationController
  def index
    albums = Albums.where(artist_id: nil, user_id: nil)
    render json: albums, each_serializer: AlbumSerializer, is_song: false
  end

  def show 
    albums = Albums.find(params[:id])
    render json: albums, each_serializer: AlbumSerializer, is_song: true
  end
  
end
