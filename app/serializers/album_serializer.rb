class AlbumSerializer < ApplicationSerializer
  attributes :id, :title, :description, :image, :created_at, :songs, :liked

  def initialize(object, options = {})
    super
    @is_song = options[:is_song]
  end

  def songs
    if @is_song
      object.songs.map { |song| SongSerializer.new(song) }
    end
  end

  def liked
    user_ids = object.liked_albums.pluck(:user_id)
    exists = user_ids.include?($current_user.id)
    exists
  end
end