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

ActiveRecord::Schema.define(version: 20170213161603) do

  create_table "carrier_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carriers", force: :cascade do |t|
    t.string   "name"
    t.integer  "carrier_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["carrier_type_id"], name: "index_carriers_on_carrier_type_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "country_code"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "port_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ports", force: :cascade do |t|
    t.string   "name"
    t.string   "port_code"
    t.integer  "country_id"
    t.integer  "port_type_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["country_id"], name: "index_ports_on_country_id"
    t.index ["port_type_id"], name: "index_ports_on_port_type_id"
  end

  create_table "rates", force: :cascade do |t|
    t.integer  "origin_id"
    t.integer  "destination_id"
    t.integer  "carrier_id"
    t.integer  "shipment_type_id"
    t.decimal  "cost",               precision: 2, scale: 2
    t.integer  "unit_of_measure_id"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.index ["carrier_id"], name: "index_rates_on_carrier_id"
    t.index ["destination_id"], name: "index_rates_on_destination_id"
    t.index ["origin_id"], name: "index_rates_on_origin_id"
    t.index ["shipment_type_id"], name: "index_rates_on_shipment_type_id"
    t.index ["unit_of_measure_id"], name: "index_rates_on_unit_of_measure_id"
  end

  create_table "shipment_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unit_of_measures", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
