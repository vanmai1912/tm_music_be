class Artist < ApplicationRecord
  has_many :artist_songs
  has_many :songs, through: :artist_songs

  enum tag: { author: "author", singer: "singer" }

end
