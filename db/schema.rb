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

ActiveRecord::Schema.define(version: 2021_02_18_060227) do

  create_table "favorites", force: :cascade do |t|
    t.integer "post_id"
    t.integer "receive_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "receive_user_id"
    t.integer "posted_number"
    t.text "post_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.integer "post_id"
    t.integer "receive_user_id"
    t.text "reply_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname"
    t.integer "place", default: 0
    t.string "job"
    t.string "profile_image"
    t.string "encrypted_password"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
