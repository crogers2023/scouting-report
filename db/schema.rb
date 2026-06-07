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

ActiveRecord::Schema[8.1].define(version: 2026_06_06_023322) do
  create_table "scouting_report_data", force: :cascade do |t|
    t.string "ceiling"
    t.datetime "created_at", null: false
    t.string "effort_rating"
    t.string "expectation"
    t.string "floor"
    t.string "fullname"
    t.string "iq_rating"
    t.text "notes"
    t.string "position"
    t.date "reportdate"
    t.string "reportleague"
    t.text "reporttext"
    t.string "reporttype"
    t.string "scout_name"
    t.text "scouting_questions"
    t.string "speed_rating"
    t.string "strength_rating"
    t.string "team"
    t.datetime "updated_at", null: false
  end
end
