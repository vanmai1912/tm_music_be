class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.integer :status
      t.string :logo_url
      t.integer :meeting_room_quota_hrs
      t.timestamps
    end
  end
end
