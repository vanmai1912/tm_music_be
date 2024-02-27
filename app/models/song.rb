class Song < ApplicationRecord
  has_many :artist_songs
  has_many :artists, through: :artist_songs

  has_many :album_songs
  has_many :albums, through: :album_songs

  has_one_attached :logo 
end
