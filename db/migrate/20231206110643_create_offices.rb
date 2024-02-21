class CreateOffices < ActiveRecord::Migration[6.1]
  def change
    create_table :offices do |t|
      t.string :name
      t.string :status
      t.integer :desks
      t.string :office_photo_url
      t.references :business, null: false, foreign_key: true
      t.references :lease, null: false, foreign_key: true

      t.timestamps
    end
  end
end
