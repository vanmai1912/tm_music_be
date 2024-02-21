class CreateLeases < ActiveRecord::Migration[6.1]
  def change
    create_table :leases do |t|
      t.date :lease_start_date
      t.date :lease_end_date
      t.integer :monthly_license_fee
      t.integer :car_space_fee
      t.references :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
