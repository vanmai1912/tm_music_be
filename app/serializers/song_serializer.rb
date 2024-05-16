class SongSerializer < ApplicationSerializer
  attributes :id, :title, :lyric, :release_date, :duration, :views, :track_number, :image, :audio, :liked, :singers, :owner
  belongs_to :genre


  def release_date
    object.release_date&.strftime('%Y-%m-%d')
  end

  def logo
    if object && object.logo.attached?
      url_for(object.logo)
    end
  end

  def owner
    if object.copyright
      invoice = Invoice.where(song_id: object.id, user_id: $current_user.id).first
      if invoice
        true
      else
        false
      end
    end
  end
  
  def singers
    object.artists.singer
  end

  def mp3_file
    if object && object.mp3_file.attached?
      url_for(object.mp3_file)
    end
  end

  def liked
    user_ids = object.liked_songs.pluck(:user_id)
    exists = user_ids.include?($current_user.id)
    exists
  end 
  
end
