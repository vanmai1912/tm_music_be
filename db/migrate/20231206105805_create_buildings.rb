class CreateBuildings < ActiveRecord::Migration[6.1]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :cover_photo_url

      t.timestamps
    end
  end
end
