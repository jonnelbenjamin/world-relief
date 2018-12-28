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

ActiveRecord::Schema.define(version: 2018_12_28_215254) do

  create_table "aid_organization_countries", force: :cascade do |t|
    t.integer "country_id"
    t.integer "aid_organization_id"
  end

  create_table "aid_organizations", force: :cascade do |t|
    t.string "name"
    t.string "country_of_field_work"
    t.string "city_of_field_work"
    t.integer "number_of_field_workers"
    t.integer "monetary_need"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "people_group"
    t.string "aid_reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_aid_organizations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "aid_organization_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "country"
    t.string "profession"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
