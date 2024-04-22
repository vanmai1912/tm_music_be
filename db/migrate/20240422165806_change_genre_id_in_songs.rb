class ChangeGenreIdInSongs < ActiveRecord::Migration[6.1]
  def change
    change_column :songs, :genre_id, :bigint, null: true
  end
end
