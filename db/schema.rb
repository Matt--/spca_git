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

ActiveRecord::Schema.define(:version => 20131008045546) do

  create_table "absences", :force => true do |t|
    t.date     "day"
    t.integer  "volunteer_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "absences", ["day"], :name => "index_absences_on_day"

  create_table "availabledays", :force => true do |t|
    t.string   "day"
    t.integer  "dayint"
    t.integer  "volunteer_id"
    t.integer  "schedulejobtype_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "data_files", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dept_supervisors", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "title"
    t.integer  "department_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "fosterer2s", :force => true do |t|
    t.string   "ownhome"
    t.string   "inspecting"
    t.string   "rooms"
    t.string   "roomwarm"
    t.string   "hutch"
    t.string   "rabbithutch"
    t.string   "aviary"
    t.string   "livestockfenced"
    t.text     "homedesc"
    t.integer  "numadulta"
    t.integer  "numchild"
    t.string   "ages"
    t.integer  "numhoursperday"
    t.string   "worktype"
    t.text     "secondperson"
    t.string   "allmembersagree"
    t.string   "bringcentre"
    t.text     "transportdesc"
    t.boolean  "agreement"
    t.integer  "volunteer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "fosterers", :force => true do |t|
    t.string   "motivation"
    t.boolean  "catnursing"
    t.boolean  "catfeeding"
    t.boolean  "catbottlefeed"
    t.boolean  "catinjured"
    t.boolean  "dognursing"
    t.boolean  "dogfeeding"
    t.boolean  "dogbottlefeed"
    t.boolean  "doginjured"
    t.boolean  "rabgui"
    t.boolean  "hedgehoginjured"
    t.boolean  "hedgehogbottle"
    t.boolean  "birdsinjured"
    t.boolean  "birdstoung"
    t.boolean  "livestock"
    t.string   "ownhome"
    t.string   "inspecting"
    t.string   "rooms"
    t.string   "roomwarm"
    t.string   "hutch"
    t.string   "rabbithutch"
    t.string   "aviary"
    t.string   "livestockfenced"
    t.text     "homedesc"
    t.integer  "numadulta"
    t.integer  "numchild"
    t.string   "ages"
    t.integer  "numhoursperday"
    t.string   "worktype"
    t.text     "secondperson"
    t.string   "allmembersagree"
    t.string   "bringcentre"
    t.text     "transportdesc"
    t.boolean  "agreement"
    t.integer  "volunteer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "personal"
  end

  create_table "frequencies", :force => true do |t|
    t.string  "name", :default => "weekly", :null => false
    t.integer "week", :default => 1,        :null => false
  end

  create_table "jobdescriptions", :force => true do |t|
    t.string   "name"
    t.integer  "department_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "ondays", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orientations", :force => true do |t|
    t.string   "presenter"
    t.date     "date"
    t.time     "time"
    t.datetime "datetime"
    t.integer  "participantMax"
    t.integer  "numCurrParticipant"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.integer  "volunteer_id"
    t.string   "role"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "vol_job_days", :force => true do |t|
    t.integer  "volunteer_id"
    t.integer  "jobdescription_id"
    t.integer  "onday_id"
    t.integer  "frequency_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "volcoordinators", :force => true do |t|
    t.string   "email_replyto"
    t.string   "application_email_header"
    t.string   "application_email_content"
    t.integer  "absence_tolerence"
    t.integer  "absence_period"
    t.string   "absence_email_header"
    t.string   "absence_email_content"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "volschedulers", :force => true do |t|
    t.integer  "department_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "volunteers", :force => true do |t|
    t.string   "role"
    t.string   "title"
    t.date     "dob"
    t.string   "firstname"
    t.string   "lastname"
    t.text     "address"
    t.string   "email"
    t.string   "moblie"
    t.string   "home"
    t.text     "background"
    t.boolean  "befosterer"
    t.date     "break_from"
    t.date     "break_to"
    t.integer  "scheduledjobtype_id"
    t.integer  "orientation_id"
    t.integer  "volscheduler_id"
    t.string   "status"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "volunteers", ["firstname"], :name => "index_volunteers_on_firstname"

  create_table "whiteboards", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "volunteer_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "whiteboards", ["volunteer_id"], :name => "index_whiteboards_on_volunteer_id"

  create_table "work_histories", :force => true do |t|
    t.integer  "volunteer_id"
    t.date     "workdate",                        :null => false
    t.string   "job",                             :null => false
    t.string   "department",                      :null => false
    t.string   "supervisor",                      :null => false
    t.boolean  "absent",       :default => false
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

end
