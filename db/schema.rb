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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2020_05_27_004040) do
=======
ActiveRecord::Schema.define(version: 2020_05_27_003054) do
>>>>>>> 8ae04217d5d58848f55a88aeb087d55cd96c1d45

  create_table "bets", force: :cascade do |t|
    t.string "amount"
  end

  create_table "competitor", force: :cascade do |t|
    t.string "name"
    t.boolean "is_team"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.integer "event_id"
    t.string "description"
    t.string "event_type"
    t.string "link"
    t.datetime "start_time"
    t.datetime "last_modified"
    t.integer "sport_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "email"
  end

end
