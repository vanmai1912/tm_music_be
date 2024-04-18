class Album < ApplicationRecord
  attr_accessor :song_ids

  belongs_to :artist, optional: true
  belongs_to :user, optional: true
  belongs_to :genre, optional: true

  has_many :album_songs, dependent: :destroy
  has_many :songs, through: :album_songs
  has_many :liked_albums, -> { where(tag: :like) }, class_name: 'HistoryLike'

  has_one_attached :logo

  enum status: { favorite: "favorite", normal: "normal" }

  after_initialize :set_default_status, if: :new_record?

 private

  def set_default_status
    self.status ||= :normal
  end
  
end
