class Api::Me::AlbumsController < Api::ApplicationController
  def index
    albums = @current_user.albums
    render json: albums, each_serializer: AlbumSerializer, is_song: false
  end

  def create
    @album = @current_user.albums.new(album_params)

    if @album.save
      render json: @album, serializer: AlbumSerializer, is_song: false, status: :created
    else
      render json: { error: 'Không thể lưu album' }, status: :unprocessable_entity
    end
  end

  private

    def album_params
      params.permit(:title, :description, :logo)
    end
    
end