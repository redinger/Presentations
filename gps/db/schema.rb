# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090819183629) do

  create_table "available_commands", :force => true do |t|
    t.string   "command"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "commands", :force => true do |t|
    t.integer  "device_id"
    t.string   "command"
    t.string   "response"
    t.string   "status",       :default => "Processing"
    t.datetime "ended_at"
    t.integer  "reference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices", :force => true do |t|
    t.string   "name"
    t.string   "imei"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "readings", :force => true do |t|
    t.integer  "device_id"
    t.string   "admin_name1"
    t.string   "address"
    t.float    "altitude"
    t.string   "event_type"
    t.boolean  "geocoded",            :default => false, :null => false
    t.boolean  "gpio1"
    t.boolean  "gpio2"
    t.float    "direction"
    t.boolean  "ignition"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "note"
    t.boolean  "notified",            :default => false
    t.string   "place_name"
    t.float    "speed"
    t.string   "street"
    t.string   "street_number"
    t.integer  "reference_id"
    t.string   "geofence_event_type"
    t.integer  "geofence_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "readings", ["device_id"], :name => "index_readings_on_device_id"

  create_table "users", :force => true do |t|
    t.string   "email",                             :null => false
    t.string   "crypted_password",                  :null => false
    t.string   "password_salt",                     :null => false
    t.string   "persistence_token",                 :null => false
    t.string   "perishable_token",                  :null => false
    t.integer  "login_count",        :default => 0, :null => false
    t.integer  "failed_login_count", :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["last_request_at"], :name => "index_users_on_last_request_at"
  add_index "users", ["perishable_token"], :name => "index_users_on_perishable_token"
  add_index "users", ["persistence_token"], :name => "index_users_on_persistence_token"

end
