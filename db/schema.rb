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

ActiveRecord::Schema[7.0].define(version: 2022_08_15_233216) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "history_points", force: :cascade do |t|
    t.bigint "store_id", null: false
    t.bigint "score_id", null: false
    t.integer "used_points"
    t.boolean "recived"
    t.datetime "time", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["score_id"], name: "index_history_points_on_score_id"
    t.index ["store_id"], name: "index_history_points_on_store_id"
  end

  create_table "locations", force: :cascade do |t|
    t.float "x"
    t.float "y"
    t.float "z"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer "points"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_scores_on_user_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.bigint "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_stores_on_location_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "user_login"
    t.string "encrypted_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "history_points", "scores"
  add_foreign_key "history_points", "stores"
  add_foreign_key "scores", "users"
  add_foreign_key "stores", "locations"
end
