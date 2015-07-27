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

ActiveRecord::Schema.define(version: 20150725003156) do

  create_table "events", force: :cascade do |t|
    t.text     "mebog"
    t.text     "fvs"
    t.datetime "date"
    t.integer  "eventable_id"
    t.string   "eventable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "events", ["eventable_type", "eventable_id"], name: "index_events_on_eventable_type_and_eventable_id"

  create_table "human_connections", force: :cascade do |t|
    t.string   "spot"
    t.string   "orientation"
    t.string   "address"
    t.boolean  "polygon"
    t.boolean  "condition"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "cosec"
    t.string   "location"
    t.decimal  "lat",         precision: 10, scale: 6
    t.decimal  "lng",         precision: 10, scale: 6
  end

  create_table "leaseds", force: :cascade do |t|
    t.string   "spot"
    t.string   "orientation"
    t.string   "address"
    t.boolean  "polygon"
    t.boolean  "condition"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "cosec"
    t.string   "location"
    t.decimal  "lat",         precision: 10, scale: 6
    t.decimal  "lng",         precision: 10, scale: 6
  end

  create_table "owns", force: :cascade do |t|
    t.string   "spot"
    t.string   "orientation"
    t.string   "address"
    t.boolean  "polygon"
    t.boolean  "condition"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "cosec"
    t.string   "location"
    t.decimal  "lat",         precision: 10, scale: 6
    t.decimal  "lng",         precision: 10, scale: 6
  end

  create_table "schools", force: :cascade do |t|
    t.string   "spot"
    t.string   "orientation"
    t.string   "address"
    t.boolean  "polygon"
    t.boolean  "condition"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "cosec"
    t.string   "location"
    t.decimal  "lat",         precision: 10, scale: 6
    t.decimal  "lng",         precision: 10, scale: 6
  end

  create_table "transmilenios", force: :cascade do |t|
    t.string   "spot"
    t.string   "orientation"
    t.string   "address"
    t.boolean  "polygon"
    t.boolean  "condition"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "cosec"
    t.string   "location"
    t.decimal  "lat",         precision: 10, scale: 6
    t.decimal  "lng",         precision: 10, scale: 6
  end

  create_table "unit_temporals", force: :cascade do |t|
    t.string   "spot"
    t.string   "orientation"
    t.string   "address"
    t.boolean  "polygon"
    t.boolean  "condition"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "cosec"
    t.string   "location"
    t.decimal  "lat",         precision: 10, scale: 6
    t.decimal  "lng",         precision: 10, scale: 6
  end

end
