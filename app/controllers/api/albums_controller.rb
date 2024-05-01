class Api::AlbumsController < Api::ApplicationController
  def index
    albums = Album.where(artist_id: nil, user_id: nil).page(params[:page]).per(10)
    render json: {
      albums: albums,
      total_pages: albums.total_pages
    }, each_serializer: AlbumSerializer, is_song: false
  end

  def show 
    albums = Album.find(params[:id])
    render json: albums, each_serializer: AlbumSerializer, is_song: true
  end
  
end
