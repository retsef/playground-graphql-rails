# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_29_130922) do
  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.string "composer_type", null: false
    t.integer "composer_id", null: false
    t.string "genre"
    t.date "released_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["composer_type", "composer_id"], name: "index_albums_on_composer"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_authors", force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_group_authors_on_author_id"
    t.index ["group_id"], name: "index_group_authors_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.string "name"
    t.integer "album_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_tracks_on_album_id"
  end

  add_foreign_key "group_authors", "authors"
  add_foreign_key "group_authors", "groups"
  add_foreign_key "tracks", "albums"
end
