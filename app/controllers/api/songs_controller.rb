class Api::SongsController < Api::ApplicationController
  def index
    if params[:copyright].present? && params[:copyright] == 'true'
      songs = Song.where(copyright: true)
    else
      songs = Song.where(copyright: false)
    end
    songs = songs.page(params[:page]).per(10)
    render json: {
      songs: ActiveModel::Serializer::CollectionSerializer.new(songs, each_serializer: SongSerializer),
      total_pages: songs.total_pages
    }
  end

  def show 
    song = Song.find(params[:id])
    render json: song, each_serializer: SongSerializer
  end

end
