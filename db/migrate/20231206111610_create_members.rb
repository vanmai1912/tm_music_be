class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.boolean :online
      t.references :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
