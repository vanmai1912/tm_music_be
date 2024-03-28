class SongSerializer < ApplicationSerializer
  attributes :id, :title, :lyric, :release_date, :duration, :views, :track_number, :logo, :mp3_file
  belongs_to :genre, serializer: GenreSerializer, is_song: false


  def release_date
    object.release_date.strftime('%Y-%m-%d')
  end

  def logo
    if object && object.logo.attached?
      url_for(object.logo)
    end
  end

  def mp3_file
    if object && object.mp3_file.attached?
      url_for(object.mp3_file)
    end
  end
  
end