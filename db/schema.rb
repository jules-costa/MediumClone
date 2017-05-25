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

ActiveRecord::Schema.define(version: 20170525155857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "author_id",  null: false
    t.integer  "story_id",   null: false
    t.text     "body",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_comments_on_author_id", using: :btree
    t.index ["story_id"], name: "index_comments_on_story_id", using: :btree
  end

  create_table "follows", force: :cascade do |t|
    t.integer  "disciple_id", null: false
    t.integer  "guru_id",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["disciple_id"], name: "index_follows_on_disciple_id", using: :btree
    t.index ["guru_id"], name: "index_follows_on_guru_id", using: :btree
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "story_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_likes_on_story_id", using: :btree
    t.index ["user_id"], name: "index_likes_on_user_id", using: :btree
  end

  create_table "stories", force: :cascade do |t|
    t.string   "title",                                                                                                                                                                null: false
    t.text     "body",                                                                                                                                                                 null: false
    t.integer  "author_id",                                                                                                                                                            null: false
    t.string   "image_url",   default: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_568/v1495394471/A2BA8A2AFE2CA6634FEDF42475D479D0_20130103_120349_UTC_tz6jwc.jpg", null: false
    t.string   "read_time",                                                                                                                                                            null: false
    t.integer  "topic_id",                                                                                                                                                             null: false
    t.datetime "created_at",                                                                                                                                                           null: false
    t.datetime "updated_at",                                                                                                                                                           null: false
    t.integer  "size",        default: 2
    t.string   "description", default: "Knowledge, like air, is vital to life. Like air, no one should be denied it.",                                                                 null: false
    t.index ["author_id"], name: "index_stories_on_author_id", using: :btree
    t.index ["topic_id"], name: "index_stories_on_topic_id", using: :btree
  end

  create_table "topics", force: :cascade do |t|
    t.string   "title",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_topics_on_title", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.text     "biography"
    t.string   "image_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

end
