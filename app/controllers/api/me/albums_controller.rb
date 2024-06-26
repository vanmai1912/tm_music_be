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

  def add_song_ids
    album = @current_user.albums.find(params[:id])
    song_ids = JSON.parse(params[:song_ids]).uniq
  
    existing_song_ids = album.songs.pluck(:id)
    new_song_ids = song_ids - existing_song_ids
  
    if new_song_ids.present?
      if album.songs << Song.where(id: new_song_ids)
        render json: album, serializer: AlbumSerializer, is_song: true
      else
        render json: { success: false, error: "Không thể thêm các bài hát vào album" }, status: :unprocessable_entity
      end
    else
      render json: { success: false, error: "Không có bài hát mới để thêm vào album" }, status: :unprocessable_entity
    end
  end
  

  def remove_song_ids
    album = @current_user.albums.find(params[:id])
    song_ids = JSON.parse(params[:song_ids]).uniq
  
    songs = AlbumSong.where(song_id: song_ids) 
  
    if songs.destroy_all 
      render json: album, serializer: AlbumSerializer, is_song: true
    else
      render json: { success: false, error: "Không thể xóa các bài hát khỏi album" }, status: :unprocessable_entity
    end
  end
  
  def show 
    album = @current_user.albums.find(params[:id])
    if album
      render json: album, serializer: AlbumSerializer, is_song: true
    else
      render json: {}, status: :ok
    end
  end

  def destroy 
    album = @current_user.albums.find(params[:id])
    if album.destroy
      render json: {success: true, error: "Xóa thành công"}, status: :ok
    else
      render json: {success: true, error: "Có lỗi xảy ra"}, status: :unprocessable_entity
    end
  end

  private

    def album_params
      params.permit(:title, :description, :logo, :song_ids)
    end
    
end