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

ActiveRecord::Schema.define(version: 20170821044337) do

  create_table "agents", force: :cascade do |t|
    t.string "name"
    t.float "turn_over"
    t.string "itr"
    t.string "registration_c"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_agents_on_user_id"
  end

  create_table "allocations", force: :cascade do |t|
    t.datetime "allocation_date"
    t.string "special_notes"
    t.string "allocation_type"
    t.string "status"
    t.integer "agent_id"
    t.integer "user_id"
    t.integer "plot_id"
    t.datetime "closed_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agent_id"], name: "index_allocations_on_agent_id"
    t.index ["plot_id"], name: "index_allocations_on_plot_id"
    t.index ["user_id"], name: "index_allocations_on_user_id"
  end

  create_table "plots", force: :cascade do |t|
    t.string "building_no"
    t.string "floor"
    t.integer "pillar_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "allocation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allocation_id"], name: "index_transations_on_allocation_id"
    t.index ["user_id"], name: "index_transations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "salary"
    t.integer "exp_yrs"
    t.string "address"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
