class Song < ApplicationRecord
  has_many :artist_songs, dependent: :destroy
  has_many :artists, through: :artist_songs

  has_many :album_songs, dependent: :destroy
  has_many :albums, through: :album_songs

  belongs_to :genre, optional: true

  has_many :comments
  has_many :history_likes
  has_many :liked_songs, -> { where(tag: :like) }, class_name: 'HistoryLike'

  attr_accessor :logo, :mp3_file

  # before_save :calculate_and_save_duration

  private

  def calculate_and_save_duration
    return unless mp3_file.attached? && mp3_file.content_type == 'audio/mpeg'

    duration_in_seconds = calculate_duration
    self.duration = duration_in_seconds
  end

  def calculate_duration
    blob = mp3_file.blob
    file_path = ActiveStorage::Blob.service.path_for(blob.key)

    mp3_info = Mp3Info.open(file_path)
    mp3_info.length
  end
end
