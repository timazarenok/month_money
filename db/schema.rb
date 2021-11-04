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

ActiveRecord::Schema.define(version: 2021_11_02_211800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_items", force: :cascade do |t|
    t.bigint "category_id"
    t.decimal "value", default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "account_id"
    t.index ["account_id"], name: "index_account_items_on_account_id"
    t.index ["category_id"], name: "index_account_items_on_category_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.bigint "month_id"
    t.integer "year"
    t.decimal "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["month_id"], name: "index_accounts_on_month_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.boolean "product_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "months", force: :cascade do |t|
    t.string "title"
    t.integer "days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_list_items", force: :cascade do |t|
    t.bigint "product_category_id"
    t.decimal "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_list_id"
    t.index ["product_category_id"], name: "index_product_list_items_on_product_category_id"
    t.index ["product_list_id"], name: "index_product_list_items_on_product_list_id"
  end

  create_table "product_lists", force: :cascade do |t|
    t.bigint "month_id"
    t.integer "year"
    t.decimal "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["month_id"], name: "index_product_lists_on_month_id"
  end

  add_foreign_key "account_items", "accounts"
  add_foreign_key "account_items", "categories"
  add_foreign_key "accounts", "months"
  add_foreign_key "product_list_items", "product_categories"
  add_foreign_key "product_list_items", "product_lists"
  add_foreign_key "product_lists", "months"
end
