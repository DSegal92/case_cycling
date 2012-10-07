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

ActiveRecord::Schema.define(:version => 20121007003636) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
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
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "coaches", :force => true do |t|
    t.string   "name"
    t.string   "contact"
    t.text     "bio"
    t.string   "picture"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "disciplines", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "disciplines_members", :id => false, :force => true do |t|
    t.integer "discipline_id"
    t.integer "member_id"
  end

  add_index "disciplines_members", ["discipline_id", "member_id"], :name => "index_disciplines_members_on_discipline_id_and_member_id"
  add_index "disciplines_members", ["member_id", "discipline_id"], :name => "index_disciplines_members_on_member_id_and_discipline_id"

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "date"
    t.string   "website"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "discipline"
  end

  create_table "members", :force => true do |t|
    t.string   "name"
    t.string   "standing"
    t.string   "majors"
    t.string   "minors"
    t.string   "collegeCategory"
    t.text     "bio"
    t.boolean  "isRacer"
    t.string   "picture"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "usacCategory"
  end

  create_table "members_disciplines", :id => false, :force => true do |t|
    t.integer "member_id"
    t.integer "discipline_id"
  end

  add_index "members_disciplines", ["discipline_id", "member_id"], :name => "index_members_disciplines_on_discipline_id_and_member_id"
  add_index "members_disciplines", ["member_id", "discipline_id"], :name => "index_members_disciplines_on_member_id_and_discipline_id"

  create_table "officers", :force => true do |t|
    t.string   "name"
    t.string   "majors"
    t.string   "minors"
    t.string   "contact"
    t.text     "bio"
    t.string   "picture"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "position"
    t.string   "year"
  end

  create_table "positions", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rides", :force => true do |t|
    t.datetime "time"
    t.string   "location"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "discipline"
    t.string   "description"
    t.integer  "distance"
    t.string   "pace"
    t.boolean  "recurring"
  end

end
