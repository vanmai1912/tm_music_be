class ClientSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  
  attributes :id, :email, :first_name, :last_name, :avatar, :avatar_oauth2

  has_one :listened_song, serializer: SongSerializer

  def avatar
    if object && object.avatar.attached?
      rails_blob_path(object.avatar, only_path: true)
    end
  end   
end
