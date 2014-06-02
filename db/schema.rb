# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140602120426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "details", force: true do |t|
    t.integer  "user_id"
    t.datetime "birthday"
    t.integer  "gender",         default: 0
    t.integer  "marital_status", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "details", ["user_id"], name: "index_details_on_user_id", using: :btree

  create_table "educations", force: true do |t|
    t.string   "institution_name"
    t.datetime "started_on"
    t.datetime "ended_on"
    t.string   "thesis_title"
    t.string   "degree"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "educations", ["user_id"], name: "index_educations_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "work_experiences", force: true do |t|
    t.integer  "user_id"
    t.string   "company_name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "position"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "work_experiences", ["user_id"], name: "index_work_experiences_on_user_id", using: :btree

end
