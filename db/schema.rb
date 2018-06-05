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

ActiveRecord::Schema.define(version: 2018_06_05_223131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.integer "artwork_id"
    t.string "artwork_title"
    t.string "artwork_category"
    t.string "artwork_medium"
    t.string "artwork_date"
    t.string "artwork_series"
    t.string "artwork_literature"
    t.string "artwork_collecting_institution"
  end

  create_table "quiz_artists", force: :cascade do |t|
    t.string "name"
  end

  create_table "quiz_artworks", force: :cascade do |t|
    t.string "image"
    t.string "title"
    t.bigint "quiz_artist_id"
    t.index ["quiz_artist_id"], name: "index_quiz_artworks_on_quiz_artist_id"
  end

  create_table "user_favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "favorite_id"
    t.index ["favorite_id"], name: "index_user_favorites_on_favorite_id"
    t.index ["user_id"], name: "index_user_favorites_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profile_pic_file_name"
    t.string "profile_pic_content_type"
    t.integer "profile_pic_file_size"
    t.datetime "profile_pic_updated_at"
    t.string "x_app_token"
  end

  add_foreign_key "quiz_artworks", "quiz_artists"
end
