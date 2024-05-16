class GenreSerializer < ApplicationSerializer
    attributes :id, :title, :description, :image
  
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

    def singers
      singer_ids = object.songs.map { |song| song.artists.pluck(:id) }.flatten.uniq
      singers = Artist.where(id: singer_ids)
      singers
      # ActiveModel::Serializer::CollectionSerializer.new(singers, serializer: ArtistSerializer, is_song: false)
    end
  
end
