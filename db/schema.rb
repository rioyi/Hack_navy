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

ActiveRecord::Schema.define(version: 20170502080347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bls", force: :cascade do |t|
    t.string   "cod"
    t.integer  "travel_id"
    t.integer  "shipper_id"
    t.integer  "consignee_id"
    t.integer  "port_shipment_id"
    t.integer  "port_landing_id"
    t.integer  "master_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["consignee_id"], name: "index_bls_on_consignee_id", using: :btree
    t.index ["master_id"], name: "index_bls_on_master_id", using: :btree
    t.index ["port_landing_id"], name: "index_bls_on_port_landing_id", using: :btree
    t.index ["port_shipment_id"], name: "index_bls_on_port_shipment_id", using: :btree
    t.index ["shipper_id"], name: "index_bls_on_shipper_id", using: :btree
    t.index ["travel_id"], name: "index_bls_on_travel_id", using: :btree
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.integer  "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "container_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "containers", force: :cascade do |t|
    t.string   "cod"
    t.integer  "container_type_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["container_type_id"], name: "index_containers_on_container_type_id", using: :btree
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ports", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_ports_on_country_id", using: :btree
  end

  create_table "ships", force: :cascade do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_ships_on_company_id", using: :btree
  end

  create_table "travels", force: :cascade do |t|
    t.string   "cod"
    t.integer  "ship_id"
    t.date     "docking_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["ship_id"], name: "index_travels_on_ship_id", using: :btree
  end

  add_foreign_key "bls", "travels"
  add_foreign_key "containers", "container_types"
  add_foreign_key "ports", "countries"
  add_foreign_key "ships", "companies"
  add_foreign_key "travels", "ships"
end
