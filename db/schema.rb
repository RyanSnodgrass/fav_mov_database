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

ActiveRecord::Schema.define(version: 20140416153013) do

  create_table "deers", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.boolean  "tasty",    default: false
    t.datetime "birthday"
    t.string   "color",    default: "brown"
    t.boolean  "huntable", default: true
  end

  create_table "favorite_movies", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
