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

ActiveRecord::Schema.define(version: 20200929143014) do

  create_table "assessments", force: :cascade do |t|
    t.integer  "age"
    t.string   "sex"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "body_fat_percent"
    t.string   "health_goal"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "recoveries", force: :cascade do |t|
    t.string   "recovery_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "recovery_logs", force: :cascade do |t|
    t.string   "date"
    t.integer  "duration"
    t.integer  "recovery_points"
    t.integer  "user_id"
    t.integer  "recovery_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password"
    t.string   "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_logs", force: :cascade do |t|
    t.string   "date"
    t.integer  "duration"
    t.integer  "calories_burned"
    t.integer  "user_id"
    t.integer  "workout_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string   "workout_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
