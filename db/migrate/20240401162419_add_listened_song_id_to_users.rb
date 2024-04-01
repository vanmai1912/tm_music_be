class AddListenedSongIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :listened_song_id, :integer
  end
end
