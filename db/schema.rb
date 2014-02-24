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

ActiveRecord::Schema.define(:version => 20140211204906) do

  create_table "hardwares", :force => true do |t|
    t.string   "typehw"
    t.string   "model"
    t.string   "serialnr"
    t.string   "desc"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hwservice", :id => false, :force => true do |t|
    t.integer  "id",               :limit => 8, :null => false
    t.datetime "issue_date"
    t.string   "ordernr"
    t.integer  "period_of_notice"
    t.integer  "renewal_auto"
    t.datetime "startdate"
    t.string   "subordernr"
    t.string   "vendor_id"
    t.integer  "validity"
    t.string   "descript"
  end

  create_table "hwservicepositions", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.decimal  "amount"
    t.string   "period"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "hwservice_id"
    t.integer  "hardware_id"
    t.integer  "servicelevel_id"
  end

  create_table "hwservices", :force => true do |t|
    t.string   "ordernr"
    t.string   "subordernr"
    t.date     "startdate"
    t.integer  "validity"
    t.string   "vendor_id"
    t.date     "issue_date"
    t.integer  "period_of_notice"
    t.integer  "renewal_auto"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "desc"
  end

  create_table "play_evolutions", :id => false, :force => true do |t|
    t.integer  "id",            :null => false
    t.string   "hash",          :null => false
    t.datetime "applied_at",    :null => false
    t.text     "apply_script"
    t.text     "revert_script"
    t.string   "state"
    t.text     "last_problem"
  end

  create_table "servicelevels", :force => true do |t|
    t.string   "level"
    t.string   "short_desc"
    t.text     "long_desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  create_table "vendors", :force => true do |t|
    t.string   "vendor_id"
    t.string   "name1"
    t.string   "name2"
    t.string   "street"
    t.string   "zip"
    t.string   "location"
    t.string   "nationality"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
