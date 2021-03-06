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

ActiveRecord::Schema.define(version: 20171029184423) do

  create_table "availabilities", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "branch_id"
    t.float    "stock"
    t.integer  "aisleno"
    t.integer  "sectionno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "branches", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.text     "map"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checklists", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "custom_recipes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groceries", force: :cascade do |t|
    t.integer  "list_id"
    t.integer  "product_id"
    t.float    "quantity"
    t.boolean  "availability"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "product_id"
    t.float    "amount"
    t.string   "measurement"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "list_product_recipes", force: :cascade do |t|
    t.integer  "grocery_id"
    t.integer  "ingredient_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.float    "price"
    t.string   "brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.text     "dietary_requirements"
    t.integer  "serving"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.text     "dietaryrequirements"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
