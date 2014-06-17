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

ActiveRecord::Schema.define(version: 0) do

  create_table "announce", force: true do |t|
    t.string  "title",         limit: 64
    t.text    "text",                                     null: false
    t.string  "popup",         limit: 3,  default: "yes", null: false
    t.integer "window_height", limit: 2,  default: 500
    t.integer "window_width",  limit: 2,  default: 500
    t.date    "expiration"
  end

  create_table "art", force: true do |t|
    t.integer "issue",                 default: 0,         null: false
    t.string  "title",     limit: 250, default: ""
    t.string  "info",      limit: 250
    t.string  "is_splash", limit: 0,   default: ""
    t.string  "is_footer", limit: 0,   default: ""
    t.string  "type",      limit: 11,  default: "artwork", null: false
    t.integer "au_id",                 default: 0,         null: false
    t.string  "width",     limit: 6,   default: "90%",     null: false
  end

  add_index "art", ["au_id"], name: "au_id", using: :btree
  add_index "art", ["issue"], name: "issue", using: :btree
  add_index "art", ["type"], name: "type", using: :btree

  create_table "art_splice", force: true do |t|
    t.integer "art_id", limit: 1,  default: 0,  null: false
    t.integer "order",  limit: 1,  default: 0,  null: false
    t.string  "path",   limit: 50, default: "", null: false
    t.string  "text",   limit: 6
  end

  add_index "art_splice", ["order"], name: "order", using: :btree
  add_index "art_splice", ["text"], name: "text", using: :btree

  create_table "author", force: true do |t|
    t.string "name_first", limit: 25
    t.string "name_mid",   limit: 25
    t.string "name_last",  limit: 25
    t.text   "bio"
  end

  add_index "author", ["name_first"], name: "name_first", length: {"name_first"=>4}, using: :btree
  add_index "author", ["name_last"], name: "name_last", length: {"name_last"=>5}, using: :btree

  create_table "author_piece", id: false, force: true do |t|
    t.integer "au_id",               default: 0,        null: false
    t.integer "piece_id",            default: 0,        null: false
    t.string  "role",     limit: 11, default: "author", null: false
  end

  create_table "clearance", force: true do |t|
    t.string "name", limit: 20, default: "", null: false
  end

  create_table "color-scheme", force: true do |t|
    t.string "cssfile", limit: 10, default: "", null: false
  end

  add_index "color-scheme", ["cssfile"], name: "cssfile", unique: true, using: :btree

  create_table "current_issue", id: false, force: true do |t|
    t.integer "number", limit: 1, default: 0, null: false
  end

  create_table "issue", force: true do |t|
    t.datetime "date",                      null: false
    t.integer  "color-scheme-id", limit: 1
  end

  add_index "issue", ["date"], name: "date", using: :btree

  create_table "piece", force: true do |t|
    t.integer "issue_num",               default: 0,   null: false
    t.integer "page",        limit: 1,   default: 0,   null: false
    t.string  "type_id",     limit: 1,   default: "1", null: false
    t.string  "title",                   default: ""
    t.string  "subtitle",    limit: 250
    t.string  "exlibris",    limit: 250
    t.text    "text",                                  null: false
    t.text    "footer",      limit: 255
    t.text    "css"
    t.integer "parent_id"
    t.integer "child_order", limit: 1
  end

  add_index "piece", ["issue_num"], name: "issue_id", using: :btree
  add_index "piece", ["page"], name: "page_id", using: :btree
  add_index "piece", ["subtitle"], name: "subtitle", using: :btree
  add_index "piece", ["title"], name: "title", using: :btree
  add_index "piece", ["type_id"], name: "type_id", using: :btree

  create_table "splash_splice", id: false, force: true do |t|
    t.integer "id",                default: 0,  null: false
    t.integer "art_id", limit: 1,  default: 0,  null: false
    t.integer "order",  limit: 1,  default: 0,  null: false
    t.string  "path",   limit: 50, default: "", null: false
    t.string  "text",   limit: 6
  end

  create_table "user", primary_key: "username", force: true do |t|
    t.binary  "pass",                                 null: false
    t.string  "email",     limit: 50, default: ""
    t.boolean "clearance",            default: false, null: false
    t.integer "au_id"
  end

  create_table "work_type", force: true do |t|
    t.string "type", limit: 25, default: "", null: false
  end

end
