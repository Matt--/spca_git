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

ActiveRecord::Schema.define(:version => 20130904013420) do

  create_table "fosterers", :force => true do |t|
    t.string   "kitcat"
    t.string   "p1"
    t.string   "p2"
    t.string   "p31"
    t.string   "p32"
    t.string   "p33"
    t.string   "p34"
    t.string   "p35"
    t.string   "p36"
    t.string   "p4"
    t.integer  "p51"
    t.integer  "p52"
    t.integer  "p53"
    t.string   "send_email"
    t.string   "personal2"
    t.boolean  "catnursing"
    t.boolean  "catfeeding"
    t.boolean  "catbottlefeed"
    t.boolean  "catinjured"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "personal"
  end

  create_table "volcoordinators", :force => true do |t|
    t.string   "email_replyto"
    t.string   "email_header"
    t.string   "email_content"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "volunteers", :force => true do |t|
    t.string   "title"
    t.date     "dob"
    t.string   "firstname"
    t.string   "lastname"
    t.text     "address"
    t.string   "email"
    t.string   "moblie"
    t.string   "home"
    t.text     "background"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "whiteboards", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "volunteer_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "whiteboards", ["volunteer_id"], :name => "index_whiteboards_on_volunteer_id"

end
