# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_28_221746) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", id: false, force: :cascade do |t|
    t.integer "cat_id"
    t.string "cat_title"
    t.integer "cat_pages"
    t.integer "cat_subcats"
    t.integer "cat_files"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", id: false, force: :cascade do |t|
    t.integer "cl_from"
    t.string "cl_to"
    t.binary "cl_sortkey"
    t.date "cl_timestamp"
    t.binary "cl_sortkey_prefix"
    t.binary "cl_collation"
    t.string "cl_type"
    t.date "created_at"
    t.date "updated_at"
  end

end
