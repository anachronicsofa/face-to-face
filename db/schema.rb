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

ActiveRecord::Schema.define(version: 20210429013756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.string "theme"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_collections_on_user_id"
  end

  create_table "faces", force: :cascade do |t|
    t.string "name"
    t.bigint "collection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["collection_id"], name: "index_faces_on_collection_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.boolean "open"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "collection_id"
    t.index ["collection_id"], name: "index_rooms_on_collection_id"
    t.index ["user_id"], name: "index_rooms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "collections", "users"
  add_foreign_key "faces", "collections"
  add_foreign_key "rooms", "collections"
  add_foreign_key "rooms", "users"
end
