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

ActiveRecord::Schema.define(:version => 20111122225927) do

  create_table "businesses", :force => true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.integer  "payrate"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "week_id"
    t.integer  "rate_this_week"
    t.integer  "total_hours"
    t.integer  "total_pay"
    t.time     "MonStart"
    t.time     "MonEnd"
    t.time     "TueStart"
    t.time     "TueEnd"
    t.time     "WedStart"
    t.time     "WedEnd"
    t.time     "ThuStart"
    t.time     "ThuEnd"
    t.time     "FriStart"
    t.time     "FriEnd"
    t.time     "SatStart"
    t.time     "SatEnd"
    t.time     "SunStart"
    t.time     "SunEnd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
