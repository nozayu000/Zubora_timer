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

ActiveRecord::Schema.define(version: 2021_11_28_033236) do

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

end
