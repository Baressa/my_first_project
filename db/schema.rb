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

ActiveRecord::Schema.define(version: 20160414094546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "title",          null: false
    t.text     "text"
    t.string   "slug",           null: false
    t.string   "url",            null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "image_id"
    t.string   "image_thumb_id"
  end

  add_index "articles", ["slug"], name: "index_articles_on_slug", unique: true, using: :btree

  create_table "news", force: :cascade do |t|
    t.string   "title",          null: false
    t.text     "text"
    t.string   "slug",           null: false
    t.string   "url",            null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "image_id"
    t.string   "image_thumb_id"
  end

  add_index "news", ["slug"], name: "index_news_on_slug", unique: true, using: :btree

  create_table "stocks", force: :cascade do |t|
    t.string   "title",          null: false
    t.text     "text"
    t.string   "slug",           null: false
    t.string   "url",            null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "image_id"
    t.string   "image_thumb_id"
  end

  add_index "stocks", ["slug"], name: "index_stocks_on_slug", unique: true, using: :btree

end
