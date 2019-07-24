# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_17_060027) do

  create_table "areas", force: :cascade do |t|
    t.string "todoufuken"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cherries", force: :cascade do |t|
    t.integer "farm_id"
    t.string "cherry_name"
    t.string "cherry_image_id"
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "taste"
    t.string "sour"
    t.text "content"
  end

  create_table "farms", force: :cascade do |t|
    t.string "farm_name"
    t.string "business_day"
    t.integer "user_id"
    t.string "farm_image_id"
    t.integer "price"
    t.string "area"
    t.text "feature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "map_image_id"
    t.string "home_page"
    t.integer "area_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name_kanji"
    t.string "phone_number"
    t.string "post_code"
    t.string "address"
    t.integer "admin_flag"
    t.integer "resigration_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name_kana"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
