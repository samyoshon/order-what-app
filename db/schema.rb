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

ActiveRecord::Schema.define(version: 20150914185450) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string   "name"
    t.integer  "rating"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "comment"
    t.integer  "user_id"
    t.integer  "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["menu_id"], name: "index_comments_on_menu_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "menus", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "business_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "menus", ["business_id"], name: "index_menus_on_business_id", using: :btree
  add_index "menus", ["user_id"], name: "index_menus_on_user_id", using: :btree

  create_table "user_comment_tables", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "like"
  end

  add_index "user_comment_tables", ["comment_id"], name: "index_user_comment_tables_on_comment_id", using: :btree
  add_index "user_comment_tables", ["user_id"], name: "index_user_comment_tables_on_user_id", using: :btree

  create_table "user_menu_tables", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "like"
  end

  add_index "user_menu_tables", ["menu_id"], name: "index_user_menu_tables_on_menu_id", using: :btree
  add_index "user_menu_tables", ["user_id"], name: "index_user_menu_tables_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.text     "profile"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "comments", "menus"
  add_foreign_key "comments", "users"
  add_foreign_key "menus", "businesses"
  add_foreign_key "menus", "users"
  add_foreign_key "user_comment_tables", "comments"
  add_foreign_key "user_comment_tables", "users"
  add_foreign_key "user_menu_tables", "menus"
  add_foreign_key "user_menu_tables", "users"
end
