class GenreSerializer < ApplicationSerializer
    attributes :id, :title, :description, :songs, :logo
  
    def initialize(object, options = {})
      super
      @is_song = options[:is_song]
    end
  
    def songs
      if @is_song
        object.songs.map { |song| SongSerializer.new(song) }
      end
    end
  
    def logo
      if object && object.logo.attached?
        url_for(object.avatar)
      end
    end
end