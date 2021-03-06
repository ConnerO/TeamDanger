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

ActiveRecord::Schema.define(version: 20150929163020) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "check_lists", force: :cascade do |t|
    t.date     "deadline",         null: false
    t.boolean  "transcript"
    t.boolean  "essay"
    t.boolean  "sat"
    t.boolean  "act"
    t.boolean  "application"
    t.boolean  "early_acceptance"
    t.date     "tour_date"
    t.integer  "ranking"
    t.boolean  "rec_letters"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.integer  "college_id"
  end

  add_index "check_lists", ["college_id"], name: "index_check_lists_on_college_id", using: :btree
  add_index "check_lists", ["user_id"], name: "index_check_lists_on_user_id", using: :btree

  create_table "colleges", force: :cascade do |t|
    t.string   "name",          null: false
    t.string   "city"
    t.string   "state"
    t.string   "contact_info"
    t.string   "address"
    t.float    "tuition"
    t.boolean  "financial_aid"
    t.boolean  "scholarship"
    t.text     "comments"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "first_name",                      null: false
    t.string   "last_name",                       null: false
    t.date     "grad_date"
    t.integer  "app_year"
    t.string   "gender"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree

  add_foreign_key "check_lists", "colleges"
  add_foreign_key "check_lists", "users"
end
