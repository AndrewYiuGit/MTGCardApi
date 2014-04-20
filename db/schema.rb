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

ActiveRecord::Schema.define(version: 20140420220116) do

  create_table "cards", force: true do |t|
    t.integer  "mtg_set_id"
    t.text     "layout",           limit: 255
    t.text     "card_type",        limit: 255
    t.text     "card_types",       limit: 255
    t.text     "subtypes",         limit: 255
    t.text     "colors",           limit: 255
    t.integer  "multiverse_id"
    t.text     "name",             limit: 255
    t.decimal  "cmc"
    t.text     "rarity",           limit: 255
    t.text     "artist",           limit: 255
    t.text     "mana_cost",        limit: 255
    t.text     "oracle_text"
    t.text     "collector_number", limit: 255
    t.text     "image_name",       limit: 255
    t.text     "legalities",       limit: 255
    t.text     "printings",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtg_sets", force: true do |t|
    t.text     "name",         limit: 255
    t.text     "code",         limit: 255
    t.date     "release_date"
    t.text     "border",       limit: 255
    t.text     "set_type",     limit: 255
    t.text     "block",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
