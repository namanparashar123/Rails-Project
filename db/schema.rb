# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_08_221214) do

  create_table "tickets", force: :cascade do |t|
    t.integer "ticket_number"
    t.string "issue_date"
    t.string "violation"
    t.string "street"
    t.integer "violator_id", null: false
    t.string "lat"
    t.string "long"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["violator_id"], name: "index_tickets_on_violator_id"
  end

  create_table "violators", force: :cascade do |t|
    t.integer "ticket_number"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "tickets", "violators"
end
