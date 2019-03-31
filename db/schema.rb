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

ActiveRecord::Schema.define(version: 20190331195707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "congresses", force: :cascade do |t|
    t.integer "year"
    t.string "topics"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expeditions", force: :cascade do |t|
    t.integer "year"
    t.string "place"
    t.string "participants"
    t.string "responsable"
    t.bigint "expositor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expositor_id"], name: "index_expeditions_on_expositor_id"
  end

  create_table "expositors", force: :cascade do |t|
    t.string "degree"
    t.string "web"
    t.text "links"
    t.string "suggest"
    t.string "funding"
    t.string "gestor"
    t.string "expedition"
    t.string "state"
    t.string "new_gestor"
    t.text "comments"
    t.string "category"
    t.string "assistant"
    t.text "bio"
    t.string "congress"
    t.bigint "user_id"
    t.bigint "congress_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["congress_id"], name: "index_expositors_on_congress_id"
    t.index ["user_id"], name: "index_expositors_on_user_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.string "type"
    t.string "company"
    t.string "funding"
    t.bigint "expositor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expositor_id"], name: "index_invitations_on_expositor_id"
  end

  create_table "presentations", force: :cascade do |t|
    t.integer "year"
    t.string "topic"
    t.text "description"
    t.bigint "expositor_id"
    t.bigint "congress_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["congress_id"], name: "index_presentations_on_congress_id"
    t.index ["expositor_id"], name: "index_presentations_on_expositor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "gender"
    t.string "nationality"
    t.string "country"
    t.string "state"
    t.string "position"
    t.string "mail"
    t.text "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "expeditions", "expositors"
  add_foreign_key "expositors", "congresses"
  add_foreign_key "expositors", "users"
  add_foreign_key "invitations", "expositors"
  add_foreign_key "presentations", "congresses"
  add_foreign_key "presentations", "expositors"
end
