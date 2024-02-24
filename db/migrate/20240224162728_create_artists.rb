class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :tag  
      t.string :description   
      t.date :birthdate     
      t.timestamps
    end
  end
end
