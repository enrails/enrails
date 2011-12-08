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

ActiveRecord::Schema.define(:version => 20111207182852) do

  create_table "galleries", :force => true do |t|
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  add_index "galleries", ["section_id"], :name => "index_galleries_on_section_id"

  create_table "paragraphs", :force => true do |t|
    t.text     "textoes"
    t.text     "textoen"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tituloes"
    t.string   "tituloen"
    t.integer  "project_id"
  end

  add_index "paragraphs", ["section_id"], :name => "index_paragraphs_on_section_id"

  create_table "photos", :force => true do |t|
    t.string   "tituloes"
    t.string   "tituloen"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gallery_id"
    t.integer  "paragraph_id"
  end

  create_table "projects", :force => true do |t|
    t.string   "tituloes"
    t.string   "tituloen"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "section_id"
  end

  create_table "sections", :force => true do |t|
    t.string   "tituloes"
    t.string   "tituloen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
