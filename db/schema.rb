# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140501160634) do

  create_table "churches", force: true do |t|
    t.string "name"
    t.string "email"
  end

  create_table "officials", force: true do |t|
    t.string  "name"
    t.string  "email"
    t.string  "number"
    t.boolean "official"
    t.boolean "admin"
    t.string  "username"
    t.string  "password"
    t.string  "password_digest"
    t.string  "password_confirmation"
  end

  create_table "players", force: true do |t|
    t.string  "name"
    t.string  "number"
    t.string  "email"
    t.string  "age"
    t.boolean "coach"
    t.boolean "pitcher"
    t.boolean "catcher"
    t.boolean "first"
    t.boolean "second"
    t.boolean "third"
    t.boolean "short"
    t.boolean "outfield"
    t.string  "team"
    t.string  "church"
    t.boolean "assigned"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "official"
  end

  create_table "teams", force: true do |t|
    t.string  "name"
    t.string  "coach"
    t.string  "contact"
    t.string  "cname"
    t.integer "numplayers"
    t.boolean "approved"
    t.boolean "scheduled"
  end

end
