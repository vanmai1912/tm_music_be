class Invoice < ApplicationRecord
  belongs_to :user
  belongs_to :song

  after_create :add_song_to_favorite_album

  private

  def add_song_to_favorite_album
    user = User.find(self.user_id)
    user.albums.favorite.first.album_songs.create(song_id: self.song_id) if user
  end
end
