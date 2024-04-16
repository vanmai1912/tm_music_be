class AddStatusToAlbums < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :status, :string
  end
end
