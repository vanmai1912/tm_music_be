class ArtistSerializer < ApplicationSerializer
  attributes :id, :name, :image, :description, :birthdate, :followed

  has_many :albums

  def initialize(object, options = {})
    super
    @is_song = options[:is_song]
  end

  def songs
    if @is_song
      object.songs.map { |song| SongSerializer.new(song) }
    end
  end

  def followed
    user_ids = object.users.pluck(:user_id)
    exists = user_ids.include?($current_user.id)
    exists
  end

end
