class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user, foreign_key: true
      t.references :song, foreign_key: true
      t.references :parent_comment, foreign_key: { to_table: :comments }, null: true
      
      t.timestamps
    end
  end
end
