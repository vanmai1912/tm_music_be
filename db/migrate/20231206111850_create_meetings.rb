class CreateMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :meetings do |t|
      t.date :start_date
      t.date :end_date
      t.references :meeting_room, null: false, foreign_key: true
      t.references :business, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
