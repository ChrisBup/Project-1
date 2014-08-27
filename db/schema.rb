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

ActiveRecord::Schema.define(version: 20140826175131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artworks", force: true do |t|
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "label"
    t.text     "description"
    t.string   "medium"
    t.string   "object_date"
    t.string   "bk_uri"
    t.string   "bk_collection"
    t.string   "location"
    t.string   "artist_name"
    t.string   "artist_nationality"
  end

  create_table "artworks_collections", id: false, force: true do |t|
    t.integer "artwork_id",    null: false
    t.integer "collection_id", null: false
  end

  add_index "artworks_collections", ["artwork_id", "collection_id"], name: "index_artworks_collections_on_artwork_id_and_collection_id", using: :btree
  add_index "artworks_collections", ["collection_id", "artwork_id"], name: "index_artworks_collections_on_collection_id_and_artwork_id", using: :btree

  create_table "collections", force: true do |t|
    t.integer "curator_id"
    t.integer "artwork_id"
    t.string  "name"
  end

  create_table "curators", force: true do |t|
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
