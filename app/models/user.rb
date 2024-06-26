class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # before_save :ensure_authentication_token, if: :new_record?
  before_save :set_default_role, if: :new_record?

  enum role: { user: 'user', admin: 'admin' }

  attr_accessor :avatar

  has_many :albums

  has_many :history_likes
  has_many :liked_songs, -> { where("tag = 'like' AND song_id IS NOT NULL") }, class_name: 'HistoryLike'
  has_many :liked_albums, -> { where("tag = 'like' AND album_id IS NOT NULL") }, class_name: 'HistoryLike'
  has_many :history_songs, -> { where(tag: :history) }, class_name: 'HistoryLike'
  has_many :histories, through: :history_songs, source: :song
  has_many :likes, through: :liked_songs, source: :song

  has_one :listened_song, class_name: "Song", foreign_key: "id", primary_key: "listened_song_id"

  has_many :follows 
  has_many :artists, through: :follows
  has_many :comments

  has_many :history_likes
  has_many :invitations

  after_create :create_default_album

  private

  # Ensure token is generated when a new user is created
  def ensure_authentication_token
    self.token ||= generate_authentication_token
  end

  # Generate a unique authentication token
  def generate_authentication_token
    payload = { user_id: id }
    JWT.encode(payload, Rails.application.secrets.secret_key_base, 'HS256')
  end

  def set_default_role
    self.role ||= :user
  end

  def create_default_album
    self.albums.favorite.create(title: "My Favorite", description: "My favorite album")
  end
end
