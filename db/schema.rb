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

ActiveRecord::Schema.define(version: 20170817175148) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "theaters", force: :cascade do |t|
    t.integer "githubid", null: false
    t.string "name", null: false
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip", null: false
    t.float "distance"
    t.float "lon"
    t.float "lat"
    t.string "theaterChainName"
    t.string "ticketType"
    t.index ["city"], name: "index_theaters_on_city"
    t.index ["githubid"], name: "index_theaters_on_githubid"
    t.index ["zip"], name: "index_theaters_on_zip"
  end

end
