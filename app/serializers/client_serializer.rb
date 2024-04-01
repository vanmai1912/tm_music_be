class ClientSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :avatar

  has_one :listened_song, serializer: SongSerializer

  def avatar
    object.avatar.url if object.avatar.attached?
  end
  
end