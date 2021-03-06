# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_02_101108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.boolean "active"
    t.bigint "rick_id"
    t.bigint "morty_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "customer_id"
    t.bigint "rick_rating_id"
    t.bigint "morty_rating_id"
    t.integer "main_character_id"
    t.integer "associated_character_id"
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["morty_id"], name: "index_bookings_on_morty_id"
    t.index ["morty_rating_id"], name: "index_bookings_on_morty_rating_id"
    t.index ["rick_id"], name: "index_bookings_on_rick_id"
    t.index ["rick_rating_id"], name: "index_bookings_on_rick_rating_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "photo_url"
    t.string "category"
    t.boolean "availability"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "characters", column: "morty_id"
  add_foreign_key "bookings", "characters", column: "rick_id"
  add_foreign_key "bookings", "ratings", column: "morty_rating_id"
  add_foreign_key "bookings", "ratings", column: "rick_rating_id"
  add_foreign_key "bookings", "users", column: "customer_id"
end
