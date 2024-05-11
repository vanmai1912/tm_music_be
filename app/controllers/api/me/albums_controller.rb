class Api::Me::AlbumsController < Api::ApplicationController
  def index
    page_size = params[:page_size] || 10
    albums = @current_user.albums.page(params[:page]).per(page_size)
    if albums
      render json: {
        albums: ActiveModel::Serializer::CollectionSerializer.new(albums, each_serializer: AlbumSerializer,is_song: false),
        total_pages: albums.total_pages
      }
    else
      render json: {}, status: :ok
    end
  end

  def create
    @album = @current_user.albums.new(album_params)

    if @album.save
      if album_params['logo']
        url = CloudinaryService.upload_image(album_params['logo'])
        @album.update(image: url)
      end
      render json: @album, serializer: AlbumSerializer, is_song: false, status: :created
    else
      render json: { error: 'Không thể lưu album' }, status: :unprocessable_entity
    end
  end

  def update
    album = @current_user.albums.find(params[:id])
    if album && album_params['logo']
      url = CloudinaryService.upload_image(album_params['logo'])
      album.update(image: url)
      render json: album, serializer: AlbumSerializer, is_song: false, status: :created
    else
      render json: { error: 'Không thể  upload' }, status: :unprocessable_entity
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
    album = @current_user.albums.where(id: params[:id]).first
    if album
      render json: album, serializer: AlbumSerializer, is_song: true
    else
      render json: {}, status: :ok
    end
  end

  def destroy 
    album = @current_user.albums.find(params[:id])
    if album.destroy
      render json: {success: true, status: "Xóa thành công"}, status: :ok
    else
      render json: {success: true, error: "Có lỗi xảy ra"}, status: :unprocessable_entity
    end
  end

  def songs
    album = @current_user.albums.find(params[:id])
    song = album.songs.new(song_params)
    if song.save
      if song_params['logo'].present?
        url = CloudinaryService.upload_image(song_params['logo'])
      end
      if song_params['mp3_file'].present?
        audio = CloudinaryService.upload_mp3(song_params['mp3_file'])
      end
      song.update(image: url, audio: audio, private: true)
      render json: {success: true, status: "Thêm thành công"}, status: :ok
    else
      render json: {success: false, error: "Có lỗi xảy ra"}, status: :unprocessable_entity
    end
  end

  private

    def album_params
      params.permit(:title, :description, :logo, :song_ids)
    end

    def song_params
      params.permit(:title, :lyric, :release_date, :genre_id, :copyright, :mp3_file, :logo, album_ids: [], artist_ids: [])
    end
    
end