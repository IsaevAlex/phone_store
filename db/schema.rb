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

ActiveRecord::Schema.define(version: 20161123202716) do

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "rgb_code"
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "phone_id"
    t.integer  "cart_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "quantity",   default: 1
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["phone_id"], name: "index_line_items_on_phone_id"
  end

  create_table "mobile_models", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "mobile_producer_id"
  end

  create_table "mobile_producers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mobile_systems", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mobile_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phone_colors", force: :cascade do |t|
    t.integer  "phone_id"
    t.integer  "color_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.decimal  "price"
    t.integer  "mobile_type_id"
    t.integer  "mobile_model_id"
    t.boolean  "garant"
    t.boolean  "on_sale"
    t.boolean  "g_4"
    t.boolean  "g_3"
    t.boolean  "wi_fi"
    t.integer  "battery_charge"
    t.integer  "memory"
    t.integer  "ram"
    t.integer  "mobile_producer_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "mobile_system_id"
    t.integer  "screen_id"
  end

  create_table "screens", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "searches", force: :cascade do |t|
    t.integer  "mobile_system_id"
    t.integer  "mobile_producer_id"
    t.integer  "mobile_type_id"
    t.integer  "screen_id"
    t.decimal  "min_price"
    t.decimal  "max_price"
    t.decimal  "min_ram"
    t.decimal  "max_ram"
    t.decimal  "min_memory"
    t.decimal  "max_memory"
    t.decimal  "min_battery_charge"
    t.decimal  "max_battery_charge"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.boolean  "garant"
    t.boolean  "on_sale"
    t.boolean  "g_4"
    t.boolean  "g_3"
    t.boolean  "wi_fi"
  end

end
