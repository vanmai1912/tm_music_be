class Api::MeController < Api::ApplicationController
  def index 
    render json: @current_user, serializer: ClientSerializer
  end

  def search
    # byebug
    # query = params[:q].strip
    query = URI.decode_www_form_component(params[:q]).strip
    @results = []

    # Tìm kiếm theo tên album
    albums = Album.where('title LIKE ?', "%#{query}%")
    albums.each do |album|
      @results << { type: 'album', data: AlbumSerializer.new(album) }
    end

    # Tìm kiếm theo tên bài hát
    songs = Song.where('title LIKE ? OR lyric LIKE ?', "%#{query}%", "%#{query}%")
    songs.each do |song|
      @results << { type: 'song', data: SongSerializer.new(song) }
    end

    # Tìm kiếm theo thể loại
    genres = Genre.where('title LIKE ?', "%#{query}%")
    genres.each do |genre|
      @results << { type: 'genre', data: GenreSerializer.new(genre) }
    end

    render json: @results
  end

end