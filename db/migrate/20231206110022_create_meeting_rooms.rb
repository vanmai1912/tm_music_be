class CreateMeetingRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :meeting_rooms do |t|
      t.string :name
      t.integer :capacity
      t.integer :booking_cap_hrs
      t.string :wifi_network_name
      t.string :wifi_password
      t.string :meeting_room_photo_url
      t.boolean :has_tv
      t.boolean :has_av
      t.boolean :has_whiteboard
      t.boolean :has_wifi
      t.integer :joan_device_id
      t.references :building, null: false, foreign_key: true

      t.timestamps
    end
  end
end
