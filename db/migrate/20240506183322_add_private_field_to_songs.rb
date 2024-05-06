class AddPrivateFieldToSongs < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :private, :boolean, default: false
  end
end
