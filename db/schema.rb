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

ActiveRecord::Schema.define(version: 20151219234347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "covers", force: :cascade do |t|
    t.string   "number"
    t.integer  "seats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "email"
    t.string   "cell"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "rights_class"
  end

  create_table "entrees", force: :cascade do |t|
    t.string   "item"
    t.string   "category"
    t.integer  "price"
    t.string   "allergen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "party_id"
    t.integer  "entree_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "fired"
  end

  add_index "line_items", ["entree_id"], name: "index_line_items_on_entree_id", using: :btree
  add_index "line_items", ["party_id"], name: "index_line_items_on_party_id", using: :btree

  create_table "parties", force: :cascade do |t|
    t.integer  "guests"
    t.integer  "paid"
    t.integer  "employee_id"
    t.integer  "entree_id"
    t.integer  "cover_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
  end

  add_index "parties", ["cover_id"], name: "index_parties_on_cover_id", using: :btree
  add_index "parties", ["employee_id"], name: "index_parties_on_employee_id", using: :btree
  add_index "parties", ["entree_id"], name: "index_parties_on_entree_id", using: :btree

  add_foreign_key "line_items", "entrees"
  add_foreign_key "line_items", "parties"
  add_foreign_key "parties", "covers"
  add_foreign_key "parties", "employees"
  add_foreign_key "parties", "entrees"
end
