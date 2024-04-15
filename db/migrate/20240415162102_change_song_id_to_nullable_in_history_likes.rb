class ChangeSongIdToNullableInHistoryLikes < ActiveRecord::Migration[6.1]
  def change
    change_column :history_likes, :song_id, :bigint, null: true
  end
end
