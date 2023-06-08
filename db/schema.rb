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

ActiveRecord::Schema[7.0].define(version: 2023_06_08_231213) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "housing_id", null: false
    t.date "start_date"
    t.string "end_date"
    t.integer "guests"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["housing_id"], name: "index_books_on_housing_id"
    t.index ["user_id"], name: "index_books_on_user_id"
  end

  create_table "housings", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.integer "price"
    t.integer "amount_bathrooms"
    t.integer "amount_rooms"
    t.integer "msquare"
    t.string "city"
    t.string "state"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_housings_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.bigint "housing_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rating"
    t.index ["housing_id"], name: "index_reviews_on_housing_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "books", "housings"
  add_foreign_key "books", "users"
  add_foreign_key "housings", "users"
  add_foreign_key "reviews", "housings"
  add_foreign_key "reviews", "users"
end
