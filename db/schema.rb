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

ActiveRecord::Schema.define(:version => 20121031102959) do

  create_table "customers", :force => true do |t|
    t.integer  "serial_no"
    t.date     "date_of_transcation"
    t.float    "total"
    t.integer  "table_id"
    t.integer  "status"
    t.float    "adjusted_total"
    t.string   "adjustment_reason"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "deliveries", :force => true do |t|
    t.float    "cost"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "delivery_items", :force => true do |t|
    t.integer  "stock_list_item_id"
    t.integer  "delivery_id"
    t.float    "mrp"
    t.integer  "quantity"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "items", :force => true do |t|
    t.string "item_name"
    t.float  "price"
    t.string "category"
  end

  create_table "orderlists", :force => true do |t|
    t.integer  "order_id"
    t.integer  "item_id"
    t.integer  "quantity"
    t.integer  "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.boolean  "cancel_item"
  end

  create_table "orders", :force => true do |t|
    t.integer  "customer_id"
    t.float    "total"
    t.integer  "status"
    t.integer  "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "remaining_items", :force => true do |t|
    t.integer  "stock_list_item_id"
    t.integer  "stock_count_id"
    t.integer  "quantity"
    t.float    "mrp"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "stock_counts", :force => true do |t|
    t.float    "cost"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stock_list_items", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tables", :force => true do |t|
    t.integer "table_name"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "time_zone"
    t.float    "tax"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
