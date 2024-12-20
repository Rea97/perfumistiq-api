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

ActiveRecord::Schema[7.1].define(version: 2024_10_12_061655) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "complains", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id", null: false
    t.uuid "perfume_id", null: false
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["perfume_id"], name: "index_complains_on_perfume_id"
    t.index ["user_id"], name: "index_complains_on_user_id"
  end

  create_table "compliments", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id", null: false
    t.uuid "perfume_id", null: false
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["perfume_id"], name: "index_compliments_on_perfume_id"
    t.index ["user_id"], name: "index_compliments_on_user_id"
  end

  create_table "lists", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type_of"
    t.index ["type_of"], name: "index_lists_on_type_of"
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "lists_perfumes", id: false, force: :cascade do |t|
    t.uuid "list_id", null: false
    t.uuid "perfume_id", null: false
    t.index ["list_id", "perfume_id"], name: "index_lists_perfumes_on_list_id_and_perfume_id"
    t.index ["perfume_id", "list_id"], name: "index_lists_perfumes_on_perfume_id_and_list_id"
  end

  create_table "perfumes", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "designer_house"
    t.string "type_of"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shots", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id", null: false
    t.uuid "perfume_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["perfume_id"], name: "index_shots_on_perfume_id"
    t.index ["user_id"], name: "index_shots_on_user_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti", default: "", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "complains", "perfumes"
  add_foreign_key "complains", "users"
  add_foreign_key "compliments", "perfumes"
  add_foreign_key "compliments", "users"
  add_foreign_key "lists", "users"
  add_foreign_key "shots", "perfumes"
  add_foreign_key "shots", "users"
end
