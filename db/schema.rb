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

ActiveRecord::Schema[7.1].define(version: 2024_05_09_060338) do
  create_table "positions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "currency_type"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_positions_on_user_id"
  end

  create_table "total_balance_displays", force: :cascade do |t|
    t.integer "user_id", null: false
    t.decimal "balance_usd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_total_balance_displays_on_user_id"
  end

  create_table "transaction_records", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "type"
    t.datetime "timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_transaction_records_on_user_id"
  end

  create_table "user_settings", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "avatar"
    t.string "card_info"
    t.string "wallet_address"
    t.string "nickname"
    t.decimal "account_balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_settings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "phone_number"
    t.string "password_digest"
    t.string "invitation_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verification_codes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "code"
    t.datetime "expiration_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_verification_codes_on_user_id"
  end

  add_foreign_key "positions", "users"
  add_foreign_key "total_balance_displays", "users"
  add_foreign_key "transaction_records", "users"
  add_foreign_key "user_settings", "users"
  add_foreign_key "verification_codes", "users"
end
