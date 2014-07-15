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

ActiveRecord::Schema.define(version: 20140715055548) do

  create_table "loans", force: true do |t|
    t.integer  "user_id"
    t.string   "loan_type"
    t.datetime "origination_date"
    t.datetime "closed_date"
    t.string   "loan_status"
    t.float    "loan_amount"
    t.float    "loan_interest_rate"
    t.string   "loan_term"
    t.string   "financials_docs"
    t.string   "purchase_contract_docs"
    t.string   "Application_docs"
    t.string   "title_insurance_docs"
    t.string   "employment_verification_docs"
    t.text     "description"
    t.string   "mortgage_agreement_docs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "docs"
    t.string   "name_of_borrower"
    t.string   "name_of_banker"
  end

  add_index "loans", ["user_id"], name: "index_loans_on_user_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.boolean  "admin1"
    t.boolean  "admin2"
    t.boolean  "admin3"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
