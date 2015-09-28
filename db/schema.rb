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

ActiveRecord::Schema.define(version: 20150928012444) do

  create_table "answers", force: :cascade do |t|
    t.text     "content"
    t.integer  "candidate_id"
    t.integer  "question_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "candidates", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.string   "image_url"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "election_candidates", force: :cascade do |t|
    t.integer  "candidate_id"
    t.integer  "election_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "elections", force: :cascade do |t|
    t.string   "name"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  add_index "elections", ["name", "year"], name: "index_elections_on_name_and_year", unique: true
  add_index "elections", ["slug"], name: "index_elections_on_slug", unique: true

  create_table "questions", force: :cascade do |t|
    t.text     "content"
    t.integer  "election_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
