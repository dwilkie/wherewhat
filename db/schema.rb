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

ActiveRecord::Schema.define(:version => 20110309154415) do

  create_table "mo_messages", :force => true do |t|
    t.text     "params",           :null => false
    t.integer  "mobile_number_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mo_messages", ["params"], :name => "index_mo_messages_on_params", :unique => true

  create_table "mobile_numbers", :force => true do |t|
    t.string   "number",      :null => false
    t.datetime "verified_at"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mobile_numbers", ["number"], :name => "index_mobile_numbers_on_number", :unique => true

  create_table "posts", :force => true do |t|
    t.integer  "postable_id"
    t.string   "postable_type"
    t.string   "where",         :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                  :default => "", :null => false
    t.string   "encrypted_password",      :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "active_mobile_number_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["active_mobile_number_id"], :name => "index_users_on_active_mobile_number_id", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
