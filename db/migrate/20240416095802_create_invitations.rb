class CreateInvitations < ActiveRecord::Migration[6.1]
  def change
    create_table :invitations do |t|
      t.string :email
      t.integer :song_id
      t.string :pin
      t.datetime :expired
      t.decimal :price, precision: 15, scale: 2
      t.references :user, foreign_key: true, null: false
      
      t.timestamps
    end
  end
end
