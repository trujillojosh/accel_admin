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

ActiveRecord::Schema.define(version: 20180327021944) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "all_hands", force: :cascade do |t|
    t.bigint "team_id"
    t.date "date"
    t.text "b_kpi"
    t.text "t_kpi"
    t.text "help"
    t.text "blockers"
    t.text "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_all_hands_on_team_id"
  end

  create_table "attendances", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.date "date"
    t.text "desc"
    t.boolean "here"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_attendances_on_user_id"
  end

  create_table "bulk_attendances", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.text "attendees", default: [], array: true
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "corrections", force: :cascade do |t|
    t.bigint "team_id"
    t.string "corrector"
    t.date "date"
    t.text "pitch"
    t.text "demo"
    t.text "b_kpi_a"
    t.text "t_kpi_a"
    t.text "help_a"
    t.text "blockers_a"
    t.text "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_corrections_on_team_id"
  end

  create_table "logins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.string "provider"
    t.string "uid"
    t.boolean "admin"
    t.index ["email"], name: "index_logins_on_email", unique: true
    t.index ["provider"], name: "index_logins_on_provider"
    t.index ["reset_password_token"], name: "index_logins_on_reset_password_token", unique: true
    t.index ["uid"], name: "index_logins_on_uid"
  end

  create_table "members", force: :cascade do |t|
    t.bigint "team_id"
    t.string "intra"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_members_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "batch"
    t.integer "stage"
    t.date "end"
    t.boolean "active"
    t.string "lead"
    t.text "summary"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "intra"
    t.string "first"
    t.string "last"
    t.boolean "dorm"
    t.string "slackname"
    t.string "imac"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "all_hands", "teams"
  add_foreign_key "attendances", "users"
  add_foreign_key "corrections", "teams"
  add_foreign_key "members", "teams"
end
