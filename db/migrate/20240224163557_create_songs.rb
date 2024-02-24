class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.text :description
      t.date :release_date
      t.integer :duration
      t.integer :views, default: 0
      t.integer :track_number
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
