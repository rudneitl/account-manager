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

ActiveRecord::Schema.define(version: 20151201203806) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "color"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.date     "expense_date"
    t.string   "establishment"
    t.string   "description"
    t.decimal  "currency_value"
    t.date     "due_date"
    t.string   "status"
    t.integer  "source_id"
    t.integer  "category_id"
    t.integer  "period_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "expenses", ["category_id"], name: "index_expenses_on_category_id"
  add_index "expenses", ["period_id"], name: "index_expenses_on_period_id"
  add_index "expenses", ["source_id"], name: "index_expenses_on_source_id"

  create_table "fiscal_years", force: :cascade do |t|
    t.string   "name"
    t.integer  "year"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incomes", force: :cascade do |t|
    t.date     "income_date"
    t.string   "description"
    t.decimal  "currency_value"
    t.date     "likely_date"
    t.string   "status"
    t.integer  "source_id"
    t.integer  "category_id"
    t.integer  "period_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "incomes", ["category_id"], name: "index_incomes_on_category_id"
  add_index "incomes", ["period_id"], name: "index_incomes_on_period_id"
  add_index "incomes", ["source_id"], name: "index_incomes_on_source_id"

  create_table "periods", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.date     "initial_date"
    t.date     "final_date"
    t.integer  "fiscal_year_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "sources", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "color"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
