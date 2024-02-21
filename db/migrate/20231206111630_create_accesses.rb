class CreateAccesses < ActiveRecord::Migration[6.1]
  def change
    create_table :accesses do |t|
      t.references :business, null: false, foreign_key: true
      t.references :building, null: false, foreign_key: true
      t.references :members, null: false, foreign_key: true

      t.timestamps
    end
  end
end
