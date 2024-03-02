class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :avatar, :description, :birthdate

  def avatar
    object.avatar.url if object.avatar.attached?
  end
end