class Artist < ApplicationRecord
  has_many :artist_songs, dependent: :destroy
  has_many :songs, through: :artist_songs
  has_many :albums

  has_many :follows
  has_many :users, through: :follows

  enum tag: { author: "author", singer: "singer" }

  has_one_attached :avatar

end
