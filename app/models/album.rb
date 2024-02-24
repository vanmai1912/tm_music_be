class Album < ApplicationRecord
  belongs_to :artist, optional: true
  belongs_to :user, optional: true

  has_many :album_songs
  has_many :songs, through: :album_songs
end
