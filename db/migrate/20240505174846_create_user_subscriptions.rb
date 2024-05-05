class CreateUserSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :user_subscriptions do |t|
      t.references :user, foreign_key: true
      t.references :subscription, foreign_key: true
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
