class Api::Me::AlbumsController < Api::ApplicationController
  def index
    albums = @current_user.albums
    if albums
      render json: albums, each_serializer: AlbumSerializer, is_song: false
    else
      render json: {}, status: :ok
    end
  end

  def create
    @album = @current_user.albums.new(album_params)

    if @album.save
      render json: @album, serializer: AlbumSerializer, is_song: false, status: :created
    else
      render json: { error: 'Không thể lưu album' }, status: :unprocessable_entity
    end
  end

  def show 
    album = @current_user.albums.find(params[:id])
    render json: album, each_serializer: AlbumSerializer, is_song: true
  end

  private

    def album_params
      params.permit(:title, :description, :logo)
    end
    
end