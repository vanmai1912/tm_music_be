class Genre < ApplicationRecord
  attr_accessor :logo

  has_many :songs, dependent: :nullify
  has_many :albums, dependent: :nullify

  before_destroy :cleanup_associated_records

  private

  def cleanup_associated_records
    self.songs.update_all(genre_id: nil)
    self.albums.update_all(genre_id: nil)
  end

end
