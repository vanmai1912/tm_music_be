class Song < ApplicationRecord
  has_many :artist_songs, dependent: :destroy
  has_many :artists, through: :artist_songs

  has_many :album_songs, dependent: :destroy
  has_many :albums, through: :album_songs

  belongs_to :genre, optional: true

  has_many :comments
  has_many :history_likes
  has_many :liked_songs, -> { where(tag: :like) }, class_name: 'HistoryLike'

  attr_accessor :logo, :mp3_file, :album_ids
end
