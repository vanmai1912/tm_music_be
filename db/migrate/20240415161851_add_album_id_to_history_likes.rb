class AddAlbumIdToHistoryLikes < ActiveRecord::Migration[6.1]
  def change
    add_column :history_likes, :album_id, :integer
  end
end
