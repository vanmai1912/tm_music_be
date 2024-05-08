class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :view
      t.string :url
      t.integer :total_time
      t.text :description
      t.references :user, foreign_key: { optional: true }
      t.uuid :uuid, default: -> { "gen_random_uuid()" }

      t.timestamps
    end
  end
end
