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

<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150619194510) do
=======
ActiveRecord::Schema.define(version: 20150622185049) do
>>>>>>> 8c1ea9d2aaeebf847af23ce1488d7c77116e22f2
=======
ActiveRecord::Schema.define(version: 20150622185049) do
>>>>>>> 8c1ea9d2aaeebf847af23ce1488d7c77116e22f2

  create_table "apartments", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "zipcode"
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> 8c1ea9d2aaeebf847af23ce1488d7c77116e22f2
    t.integer  "category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
>>>>>>> 8c1ea9d2aaeebf847af23ce1488d7c77116e22f2
=======
>>>>>>> 8c1ea9d2aaeebf847af23ce1488d7c77116e22f2
  end

  create_table "preferences", force: :cascade do |t|
    t.text     "draft"
    t.integer  "apartment_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "preferences", ["apartment_id"], name: "index_preferences_on_apartment_id"

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "apartment_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "rooms", ["apartment_id"], name: "index_rooms_on_apartment_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
