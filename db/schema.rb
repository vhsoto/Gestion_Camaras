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

ActiveRecord::Schema.define(version: 20150707223342) do

  create_table "human_connections", force: :cascade do |t|
    t.string   "spot"
    t.string   "orientation"
    t.string   "address"
    t.text     "strangeness_fvs"
    t.text     "strangeness_mebog"
    t.boolean  "polygon"
    t.boolean  "condition"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "leaseds", force: :cascade do |t|
    t.string   "spot"
    t.string   "orientation"
    t.string   "address"
    t.text     "strangeness_fvs"
    t.text     "strangeness_mebog"
    t.boolean  "polygon"
    t.boolean  "condition"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "news", force: :cascade do |t|
    t.text     "mebog"
    t.text     "fvs"
    t.integer  "newable_id"
    t.string   "newable_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "news", ["newable_type", "newable_id"], name: "index_news_on_newable_type_and_newable_id"

  create_table "owns", force: :cascade do |t|
    t.string   "spot"
    t.string   "orientation"
    t.string   "address"
    t.text     "strangeness_fvs"
    t.text     "strangeness_mebog"
    t.boolean  "polygon"
    t.boolean  "condition"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "spot"
    t.string   "orientation"
    t.string   "address"
    t.text     "strangeness_fvs"
    t.text     "strangeness_mebog"
    t.boolean  "polygon"
    t.boolean  "condition"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "transmilenios", force: :cascade do |t|
    t.string   "spot"
    t.string   "orientation"
    t.string   "address"
    t.text     "strangeness_fvs"
    t.text     "strangeness_mebog"
    t.boolean  "polygon"
    t.boolean  "condition"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "unit_temporals", force: :cascade do |t|
    t.string   "spot"
    t.string   "orientation"
    t.string   "address"
    t.text     "strangeness_fvs"
    t.string   "strangeness_mebog"
    t.boolean  "polygon"
    t.boolean  "condition"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
