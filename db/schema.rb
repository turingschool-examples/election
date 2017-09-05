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

ActiveRecord::Schema.define(version: 20170902043939) do

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
