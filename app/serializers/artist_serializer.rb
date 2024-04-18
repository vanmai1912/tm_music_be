class ArtistSerializer < ApplicationSerializer
  attributes :id, :name, :image, :description, :birthdate, :songs

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

end