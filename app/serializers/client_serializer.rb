class ClientSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  
  attributes :id, :email, :first_name, :last_name, :avatar_oauth2

  has_one :listened_song, serializer: SongSerializer

end
