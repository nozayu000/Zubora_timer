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

ActiveRecord::Schema.define(version: 2021_11_29_124329) do

  create_table "calendars", force: :cascade do |t|
    t.integer "user_id"
    t.integer "timer_id"
    t.integer "like_id"
    t.integer "comment_id"
    t.boolean "workout"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "workout_counts"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "commenter_id"
    t.integer "commented_id"
    t.text "comment_contents"
    t.date "date"
    t.integer "workout_amounts"
    t.integer "ranking_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "timer_id"
    t.integer "like_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "followed_id"
    t.integer "follow_id"
  end

  create_table "rankings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "timer_id"
    t.integer "workout_daily"
    t.integer "workout_weekly"
    t.integer "workout_age"
    t.integer "workout_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "workout_generation"
    t.integer "workout_month"
    t.integer "workout_amounts"
  end

  create_table "timers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "second_work"
    t.integer "second_rest"
    t.integer "set_time"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "work_seconds"
    t.integer "rest_seconds"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.integer "age"
    t.string "last_name"
    t.string "first_name"
    t.boolean "is_deleted"
    t.boolean "public"
    t.string "uid"
    t.string "provider"
    t.string "location"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
