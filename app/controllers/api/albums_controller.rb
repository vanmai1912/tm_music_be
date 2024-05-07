class Api::AlbumsController < Api::ApplicationController
  def index
    page_size = params[:page_size] || 10
    albums = Album.where(artist_id: nil, user_id: nil).page(params[:page]).per(page_size)
    render json: {
      albums: ActiveModel::Serializer::CollectionSerializer.new(albums, each_serializer: AlbumSerializer,is_song: false),
      total_pages: albums.total_pages
    }
  end

  def show 
    albums = Album.find(params[:id])
    render json: albums, each_serializer: AlbumSerializer, is_song: true
  end
  
end
