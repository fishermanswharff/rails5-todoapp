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

ActiveRecord::Schema.define(version: 20151128192302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lists", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "url_slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_lists_on_name", using: :btree
  end

  create_table "notes", force: :cascade do |t|
    t.text     "body",       default: "", null: false
    t.integer  "todo_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["todo_id"], name: "index_notes_on_todo_id", using: :btree
  end

  create_table "todos", force: :cascade do |t|
    t.text     "name"
    t.boolean  "completed",  default: false
    t.integer  "list_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["list_id"], name: "index_todos_on_list_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.text     "firstname"
    t.text     "lastname"
    t.text     "username",                                         null: false
    t.integer  "role",                             default: 1,     null: false
    t.text     "email"
    t.integer  "phonenumber",            limit: 8
    t.string   "password_digest"
    t.string   "token"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.boolean  "active",                           default: true
    t.boolean  "main_store_contact",               default: false
    t.boolean  "main_business_contact",            default: false
    t.boolean  "confirmed",                        default: false
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

end
