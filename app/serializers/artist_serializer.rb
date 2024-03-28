class ArtistSerializer < ApplicationSerializer
  attributes :id, :name, :avatar, :description, :birthdate, :avatar, :songs

  has_many :albums, serializer: AlbumSerializer, is_song: false

  def initialize(object, options = {})
    super
    @is_song = options[:is_song]
  end

  def songs
    if @is_song
      object.songs.map { |song| SongSerializer.new(song) }
    end
  end

  def avatar
    if object && object.avatar.attached?
      url_for(object.avatar)
    end
  end
end