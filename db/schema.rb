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

ActiveRecord::Schema.define(version: 20161118232723) do

  create_table "contracts", force: :cascade do |t|
    t.integer  "rental_period"
    t.string   "delivery_address"
    t.string   "contact"
    t.string   "payment_method"
    t.float    "amount"
    t.float    "discount"
    t.float    "total_amount"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "customer_id"
    t.index ["customer_id"], name: "index_contracts_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "legal_name"
    t.string   "customer_type"
    t.string   "document"
    t.string   "fiscal_number"
    t.string   "contact_name"
    t.string   "phone_number"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "delivery_receipts", force: :cascade do |t|
    t.integer  "contract_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["contract_id"], name: "index_delivery_receipts_on_contract_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.string   "category"
    t.string   "serial_number"
    t.datetime "acquisition_date"
    t.float    "replacement_value"
    t.integer  "usage_limit"
    t.text     "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "rental_equipments", force: :cascade do |t|
    t.integer  "contract_id"
    t.integer  "equipment_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["contract_id"], name: "index_rental_equipments_on_contract_id"
    t.index ["equipment_id"], name: "index_rental_equipments_on_equipment_id"
  end

  create_table "retal_equipments", force: :cascade do |t|
    t.integer  "contract_id"
    t.integer  "equipment_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["contract_id"], name: "index_retal_equipments_on_contract_id"
    t.index ["equipment_id"], name: "index_retal_equipments_on_equipment_id"
  end

end
