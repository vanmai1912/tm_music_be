class ClientSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :avatar

  def avatar
    object.avatar.url if object.avatar.attached?
  end
  
end