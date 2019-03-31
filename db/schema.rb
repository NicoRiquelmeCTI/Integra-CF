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

ActiveRecord::Schema.define(version: 20190331204621) do

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

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
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
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "expeditions", "expositors"
  add_foreign_key "expositors", "congresses"
  add_foreign_key "expositors", "users"
  add_foreign_key "invitations", "expositors"
  add_foreign_key "presentations", "congresses"
  add_foreign_key "presentations", "expositors"
end
