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

ActiveRecord::Schema.define(version: 2020_01_10_212534) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.integer "gender"
    t.string "size"
    t.string "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.hstore "breeds", default: {}, null: false
    t.string "organization_id"
    t.string "description"
    t.string "status"
    t.json "photos"
    t.hstore "contact", default: {}, null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "dog_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "api_dog_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "website"
    t.string "name"
    t.string "street"
    t.integer "zip"
    t.string "state"
    t.string "city"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "apiid"
    t.string "image"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
