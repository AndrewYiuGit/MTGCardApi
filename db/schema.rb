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

ActiveRecord::Schema.define(version: 20140420150420) do

  create_table "cards", force: true do |t|
    t.integer  "mtg_set_id"
    t.string   "layout"
    t.string   "card_type"
    t.string   "card_types"
    t.string   "subtypes"
    t.string   "colors"
    t.integer  "multiverse_id"
    t.string   "name"
    t.decimal  "cmc"
    t.string   "rarity"
    t.string   "artist"
    t.string   "mana_cost"
    t.text     "oracle_text"
    t.string   "collector_number"
    t.string   "image_name"
    t.string   "legalities"
    t.string   "printings"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtg_sets", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.date     "release_date"
    t.string   "border"
    t.string   "set_type"
    t.string   "block"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
