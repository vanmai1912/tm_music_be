class AddCopyrightToSongs < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :copyright, :boolean, default: false
  end
end
