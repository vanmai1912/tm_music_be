class GenreSerializer < ApplicationSerializer
    attributes :id, :title, :description, :image, :songs, :singers
  
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
      
      singers_with_new_field = singers.map do |singer|
        user_ids = singer.users.pluck(:id)
        exists = user_ids.include?($current_user.id)
        singer.attributes.merge(followed: exists)
      end
      
      singers_with_new_field
    end  
  
end
