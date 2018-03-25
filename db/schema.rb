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

ActiveRecord::Schema.define(version: 20180325103036) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "item_code"
    t.integer  "category_id"
    t.integer  "group_id"
    t.integer  "sub_group_id"
    t.integer  "section_id"
    t.integer  "goods_services"
    t.integer  "weighted_item_id"
    t.integer  "varierty"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "quotation_items", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "shop_id"
    t.datetime "scheduled_time"
    t.integer  "specification_id"
    t.integer  "special_code"
    t.integer  "shop_code"
    t.text     "remarks"
    t.float    "current_price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.float    "price"
    t.integer  "quotation_id"
  end

  add_index "quotation_items", ["item_id"], name: "index_quotation_items_on_item_id"
  add_index "quotation_items", ["quotation_id"], name: "index_quotation_items_on_quotation_id"
  add_index "quotation_items", ["shop_id"], name: "index_quotation_items_on_shop_id"
  add_index "quotation_items", ["specification_id"], name: "index_quotation_items_on_specification_id"
  add_index "quotation_items", ["user_id"], name: "index_quotation_items_on_user_id"

  create_table "quotations", force: :cascade do |t|
    t.string   "state"
    t.string   "town"
    t.integer  "quotation_number"
    t.datetime "month"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specifications", force: :cascade do |t|
    t.string   "brand"
    t.string   "variety"
    t.string   "unit"
    t.string   "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "item_id"
  end

  add_index "specifications", ["item_id"], name: "index_specifications_on_item_id"

  create_table "sub_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "access_token"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
