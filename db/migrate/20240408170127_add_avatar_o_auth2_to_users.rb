class AddAvatarOAuth2ToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :avatar_oauth2, :string, null: true
  end
end
