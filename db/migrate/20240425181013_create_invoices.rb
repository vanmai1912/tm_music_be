class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.references :user, foreign_key: true
      t.references :song, foreign_key: true
      t.string :name
      t.string :email
      t.integer :price
      t.string :status
      t.string :currency
      t.json :stripe_data

      t.timestamps
    end 
  end
end
