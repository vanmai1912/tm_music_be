class Song < ApplicationRecord
  has_many :artist_songs, dependent: :destroy
  has_many :artists, through: :artist_songs

  has_many :album_songs, dependent: :destroy
  has_many :albums, through: :album_songs

  belongs_to :genre, optional: true

  has_many :comments
  has_many :history_likes
  has_many :liked_songs, -> { where(tag: :like) }, class_name: 'HistoryLike'
  has_many :invoices

  attr_accessor :logo, :mp3_file, :album_ids

  after_create :send_email_to_user

  private

  def send_email_to_user
    followed_users = []
    if self.copyright 
      followed_users = User.all
    else
      self.artists.each do |artist|
        followed_users += artist.users
      end
    end
    followed_users.uniq.each do |user|
      UserMailer.send_email_after_create_song(user, self, self.copyright).deliver_now
    end
  end

end
