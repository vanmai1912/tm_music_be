class RenameDescriptionToLyricInSongs < ActiveRecord::Migration[6.1]
  def change
    rename_column :songs, :description, :lyric
  end
end
