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

ActiveRecord::Schema.define(version: 20131028182956) do

  create_table "task_sessions", force: true do |t|
    t.string   "title"
    t.integer  "progress"
    t.string   "admin"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "title"
    t.integer  "progress"
    t.string   "people"
    t.string   "task_location"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "task_session_id"
  end

end
