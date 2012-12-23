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

ActiveRecord::Schema.define(:version => 20121223135100) do

  create_table "news", :force => true do |t|
    t.string   "header"
    t.text     "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "news_comments", :force => true do |t|
    t.integer  "user_id"
    t.text     "text"
    t.integer  "news_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "news_comments", ["news_id"], :name => "index_news_comments_on_news_id"
  add_index "news_comments", ["user_id"], :name => "index_news_comments_on_user_id"

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "prod_comments", :force => true do |t|
    t.integer  "user_id"
    t.text     "text"
    t.integer  "product_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "prod_comments", ["product_id"], :name => "index_prod_comments_on_product_id"
  add_index "prod_comments", ["user_id"], :name => "index_prod_comments_on_user_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.integer  "count"
    t.float    "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "record_comments", :force => true do |t|
    t.integer  "user_id"
    t.text     "text"
    t.integer  "record_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "record_comments", ["record_id"], :name => "index_record_comments_on_record_id"
  add_index "record_comments", ["user_id"], :name => "index_record_comments_on_user_id"

  create_table "records", :force => true do |t|
    t.string   "header"
    t.text     "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
