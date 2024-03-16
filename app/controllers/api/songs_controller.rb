class Api::SongsController < Api::ApplicationController
  def index
    if params[:page].present?
      per_page = 10
      page_number = params[:page].to_i
      offset = (page_number - 1) * per_page
      songs = Song.offset(offset).limit(per_page)
    else
      songs = Song.first 10
    end
    render json: songs, each_serializer: SongSerializer
  end

  def show 
    song = Song.find(params[:id])
    render json: song, each_serializer: SongSerializer
  end

end
