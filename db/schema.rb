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

ActiveRecord::Schema.define(version: 2021_03_24_122812) do

  create_table "songlists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "songlists_songs", force: :cascade do |t|
    t.integer "songlist_id", null: false
    t.integer "song_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["song_id"], name: "index_songlists_songs_on_song_id"
    t.index ["songlist_id"], name: "index_songlists_songs_on_songlist_id"
  end

  create_table "songlists_users", force: :cascade do |t|
    t.integer "songlist_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["songlist_id"], name: "index_songlists_users_on_songlist_id"
    t.index ["user_id"], name: "index_songlists_users_on_user_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "artist"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "songs_songlists", force: :cascade do |t|
    t.integer "song_id", null: false
    t.integer "songlist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["song_id"], name: "index_songs_songlists_on_song_id"
    t.index ["songlist_id"], name: "index_songs_songlists_on_songlist_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  create_table "users_songlists", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "songlist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["songlist_id"], name: "index_users_songlists_on_songlist_id"
    t.index ["user_id"], name: "index_users_songlists_on_user_id"
  end

  add_foreign_key "songlists_songs", "songlists"
  add_foreign_key "songlists_songs", "songs"
  add_foreign_key "songlists_users", "songlists"
  add_foreign_key "songlists_users", "users"
  add_foreign_key "songs_songlists", "songlists"
  add_foreign_key "songs_songlists", "songs"
  add_foreign_key "users_songlists", "songlists"
  add_foreign_key "users_songlists", "users"
end
