class GenreSerializer < ApplicationSerializer
    attributes :id, :title, :description, :songs, :image, :singers
  
    has_many :albums, each_serializer: AlbumSerializer, is_song: false

    def initialize(object, options = {})
      super
      @is_song = options[:is_song]
    end
  
    def songs
      if @is_song
        object.songs.map { |song| SongSerializer.new(song) }
      end
    end

    def singers
      singer_ids = object.songs.map { |song| song.artists.pluck(:id) }.flatten.uniq
      singers = Artist.where(id: singer_ids)
      ActiveModel::Serializer::CollectionSerializer.new(singers, serializer: ArtistSerializer)
    end
  
end
