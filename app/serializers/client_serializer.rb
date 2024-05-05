class ClientSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  
  attributes :id, :email, :first_name, :last_name, :avatar_oauth2, :premium

  has_one :listened_song, serializer: SongSerializer

  def premium
    $current_user.subscriptions.size > 0 ? true : false
  end

end
