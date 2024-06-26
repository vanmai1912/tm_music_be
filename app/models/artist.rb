class Artist < ApplicationRecord
  attr_accessor :avatar

  has_many :artist_songs, dependent: :destroy
  has_many :songs, through: :artist_songs
  has_many :albums

  has_many :follows
  has_many :users, through: :follows

  enum tag: { author: "author", singer: "singer" }

end
