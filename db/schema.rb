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

ActiveRecord::Schema[7.0].define(version: 2017_09_02_043939) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.bigint "party_id"
    t.index ["party_id"], name: "index_candidates_on_party_id"
  end

  create_table "counties", force: :cascade do |t|
    t.string "name"
    t.string "fips_code"
    t.bigint "state_id"
    t.index ["state_id"], name: "index_counties_on_state_id"
  end

  create_table "parties", force: :cascade do |t|
    t.string "name"
  end

  create_table "primary_results", force: :cascade do |t|
    t.bigint "county_id"
    t.bigint "candidate_id"
    t.integer "votes"
    t.decimal "fraction_votes"
    t.index ["candidate_id"], name: "index_primary_results_on_candidate_id"
    t.index ["county_id"], name: "index_primary_results_on_county_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
  end

  add_foreign_key "candidates", "parties"
  add_foreign_key "counties", "states"
  add_foreign_key "primary_results", "candidates"
  add_foreign_key "primary_results", "counties"
end
