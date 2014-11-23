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

ActiveRecord::Schema.define(version: 20141123032126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses_users", id: false, force: true do |t|
    t.integer "course_id", null: false
    t.integer "user_id",   null: false
    t.boolean "admin"
  end

  add_index "courses_users", ["course_id"], name: "index_courses_users_on_course_id", using: :btree
  add_index "courses_users", ["user_id"], name: "index_courses_users_on_user_id", using: :btree

  create_table "polls", force: true do |t|
    t.integer  "course_id"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "polls", ["course_id"], name: "index_polls_on_course_id", using: :btree

  create_table "questions", force: true do |t|
    t.json     "answers"
    t.integer  "duration"
    t.string   "question"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "poll_id"
    t.datetime "start_time"
    t.integer  "correct_answer_id"
  end

  add_index "questions", ["poll_id"], name: "index_questions_on_poll_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "caseid"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users_questions", force: true do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.integer "answer_id"
  end

end
