class CreateHistoryLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :history_likes do |t|
      t.string :tag
      t.references :user, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true
      t.timestamps
    end
  end
end
