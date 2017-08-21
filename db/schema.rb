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

ActiveRecord::Schema.define(version: 20170820221650) do

  create_table "brestrictions", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.integer "kid_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kid_id"], name: "index_brestrictions_on_kid_id"
  end

  create_table "hrestrictions", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.integer "kid_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kid_id"], name: "index_hrestrictions_on_kid_id"
  end

  create_table "kids", force: :cascade do |t|
    t.string "name"
    t.string "school"
    t.float "balance"
    t.boolean "autopay"
    t.integer "default_method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kids_lunches", id: false, force: :cascade do |t|
    t.integer "lunch_id"
    t.integer "kid_id"
    t.index ["kid_id"], name: "index_kids_lunches_on_kid_id"
    t.index ["lunch_id"], name: "index_kids_lunches_on_lunch_id"
  end

  create_table "lunches", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "day"
    t.string "description"
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.string "email"
    t.string "methodtype"
    t.integer "date_year"
    t.integer "date_month"
    t.integer "cvv"
    t.integer "routing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restrictions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
