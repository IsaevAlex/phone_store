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

ActiveRecord::Schema.define(version: 20161213221832) do

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
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "mobile_system_id"
    t.integer  "screen_id"
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
    t.index ["cached_votes_down"], name: "index_phones_on_cached_votes_down"
    t.index ["cached_votes_score"], name: "index_phones_on_cached_votes_score"
    t.index ["cached_votes_total"], name: "index_phones_on_cached_votes_total"
    t.index ["cached_votes_up"], name: "index_phones_on_cached_votes_up"
    t.index ["cached_weighted_average"], name: "index_phones_on_cached_weighted_average"
    t.index ["cached_weighted_score"], name: "index_phones_on_cached_weighted_score"
    t.index ["cached_weighted_total"], name: "index_phones_on_cached_weighted_total"
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

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.string   "votable_type"
    t.integer  "votable_id"
    t.string   "voter_type"
    t.integer  "voter_id"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  end

end
