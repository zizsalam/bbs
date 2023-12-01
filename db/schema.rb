# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_12_01_122200) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "interventions", force: :cascade do |t|
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "work_type"
    t.string "image"
    t.index ["user_id"], name: "index_interventions_on_user_id"
  end

  create_table "offers", force: :cascade do |t|
    t.decimal "price"
    t.integer "estimated_time"
    t.bigint "intervention_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["intervention_id"], name: "index_offers_on_intervention_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "interventions", "users"
  add_foreign_key "offers", "interventions"
end
