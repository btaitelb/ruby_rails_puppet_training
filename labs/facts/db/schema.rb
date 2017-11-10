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

ActiveRecord::Schema.define(version: 20171110045950) do

  create_table "datacenters", force: :cascade do |t|
    t.string "name"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_datacenters_on_region_id"
  end

  create_table "facts", force: :cascade do |t|
    t.string "name"
    t.string "value"
    t.integer "machine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_facts_on_machine_id"
  end

  create_table "machines", force: :cascade do |t|
    t.string "name"
    t.integer "datacenter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["datacenter_id"], name: "index_machines_on_datacenter_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
