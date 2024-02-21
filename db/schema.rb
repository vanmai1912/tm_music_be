# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_12_06_112000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accesses", force: :cascade do |t|
    t.bigint "business_id", null: false
    t.bigint "building_id", null: false
    t.bigint "members_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["building_id"], name: "index_accesses_on_building_id"
    t.index ["business_id"], name: "index_accesses_on_business_id"
    t.index ["members_id"], name: "index_accesses_on_members_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.string "cover_photo_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.string "logo_url"
    t.integer "meeting_room_quota_hrs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "leases", force: :cascade do |t|
    t.date "lease_start_date"
    t.date "lease_end_date"
    t.integer "monthly_license_fee"
    t.integer "car_space_fee"
    t.bigint "business_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_leases_on_business_id"
  end

  create_table "meeting_rooms", force: :cascade do |t|
    t.string "name"
    t.integer "capacity"
    t.integer "booking_cap_hrs"
    t.string "wifi_network_name"
    t.string "wifi_password"
    t.string "meeting_room_photo_url"
    t.boolean "has_tv"
    t.boolean "has_av"
    t.boolean "has_whiteboard"
    t.boolean "has_wifi"
    t.integer "joan_device_id"
    t.bigint "building_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["building_id"], name: "index_meeting_rooms_on_building_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "meeting_room_id", null: false
    t.bigint "business_id", null: false
    t.bigint "member_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_meetings_on_business_id"
    t.index ["meeting_room_id"], name: "index_meetings_on_meeting_room_id"
    t.index ["member_id"], name: "index_meetings_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.boolean "online"
    t.bigint "business_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_members_on_business_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.integer "desks"
    t.string "office_photo_url"
    t.bigint "business_id", null: false
    t.bigint "lease_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_offices_on_business_id"
    t.index ["lease_id"], name: "index_offices_on_lease_id"
  end

  create_table "pember_admins", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.date "last_sign_in"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "accesses", "buildings"
  add_foreign_key "accesses", "businesses"
  add_foreign_key "accesses", "members", column: "members_id"
  add_foreign_key "leases", "businesses"
  add_foreign_key "meeting_rooms", "buildings"
  add_foreign_key "meetings", "businesses"
  add_foreign_key "meetings", "meeting_rooms"
  add_foreign_key "meetings", "members"
  add_foreign_key "members", "businesses"
  add_foreign_key "offices", "businesses"
  add_foreign_key "offices", "leases"
end
