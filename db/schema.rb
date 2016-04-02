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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160326131839) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "book_tags", force: :cascade do |t|
    t.integer "book_id", limit: 4
    t.integer "tag_id",  limit: 4
  end

  add_index "book_tags", ["book_id"], name: "index_book_tags_on_book_id", using: :btree
  add_index "book_tags", ["tag_id"], name: "index_book_tags_on_tag_id", using: :btree

  create_table "books", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.integer  "rating",     limit: 4
    t.integer  "category",   limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "books", ["user_id"], name: "index_books_on_user_id", using: :btree

  create_table "chapters", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.integer  "position",   limit: 4
    t.text     "text",       limit: 16777215
    t.integer  "book_id",    limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "chapters", ["book_id"], name: "index_chapters_on_book_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.text     "text",             limit: 65535
    t.integer  "commentable_id",   limit: 4
    t.string   "commentable_type", limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "comments", ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id", using: :btree

  create_table "likes", force: :cascade do |t|
    t.integer  "likable_id",   limit: 4
    t.string   "likable_type", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "likes", ["likable_type", "likable_id"], name: "index_likes_on_likable_type_and_likable_id", using: :btree

  create_table "positions", force: :cascade do |t|
    t.integer  "position",          limit: 4
    t.integer  "positionable_id",   limit: 4
    t.string   "positionable_type", limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "positions", ["positionable_type", "positionable_id"], name: "index_positions_on_positionable_type_and_positionable_id", using: :btree

  create_table "rates", force: :cascade do |t|
    t.integer  "rate",         limit: 4
    t.integer  "ratable_id",   limit: 4
    t.string   "ratable_type", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "rates", ["ratable_type", "ratable_id"], name: "index_rates_on_ratable_type_and_ratable_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "tag",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "nickname",               limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
