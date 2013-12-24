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

ActiveRecord::Schema.define(:version => 20131121014224) do

  create_table "categories", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "name",       :limit => 64, :null => false
    t.string   "photo"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "categories", ["id"], :name => "index_categories_on_id", :unique => true

  create_table "deliveries", :force => true do |t|
    t.string   "name",       :limit => 64, :null => false
    t.integer  "user_id"
    t.integer  "lot_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "lots", :force => true do |t|
    t.string   "name",        :limit => 64,   :null => false
    t.text     "description", :limit => 2048
    t.string   "prepay",      :limit => 128
    t.string   "source",      :limit => 128
    t.string   "photo"
    t.integer  "user_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name",        :limit => 64,   :null => false
    t.text     "description", :limit => 1024
    t.integer  "value"
    t.integer  "user_id"
    t.integer  "lot_id"
    t.integer  "category_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "products", ["category_id"], :name => "index_products_on_category_id"
  add_index "products", ["lot_id"], :name => "index_products_on_lot_id"
  add_index "products", ["user_id"], :name => "index_products_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                                  :default => "",    :null => false
    t.string   "encrypted_password",                     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                          :default => 0,     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name",                   :limit => 16,                      :null => false
    t.text     "about",                  :limit => 1024
    t.string   "avatar_photo"
    t.string   "background_photo"
    t.boolean  "verified",                               :default => false
    t.datetime "registered",                                                :null => false
    t.integer  "positive",                               :default => 0
    t.integer  "negative",                               :default => 0
    t.datetime "created_at",                                                :null => false
    t.datetime "updated_at",                                                :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["name"], :name => "index_users_on_name", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
