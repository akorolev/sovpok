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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130922053040) do

  create_table "users", :force => true do |t|
    t.string   "name",             :limit => 16,                      :null => false
    t.string   "password",                                            :null => false
    t.string   "email",            :limit => 32,                      :null => false
    t.text     "about",            :limit => 1024
    t.string   "avatar_photo"
    t.string   "background_photo"
    t.boolean  "verified",                         :default => false
    t.datetime "registered",                                          :null => false
    t.integer  "positive",                         :default => 0
    t.integer  "negative",                         :default => 0
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
  end

  add_index "users", ["name"], :name => "index_users_on_name", :unique => true

end
