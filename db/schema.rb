# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_23_220928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "idiomas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "idiomas_libros", force: :cascade do |t|
    t.bigint "idioma_id", null: false
    t.bigint "libro_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["idioma_id"], name: "index_idiomas_libros_on_idioma_id"
    t.index ["libro_id"], name: "index_idiomas_libros_on_libro_id"
  end

  create_table "libros", force: :cascade do |t|
    t.string "nombre"
    t.bigint "idioma_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["idioma_id"], name: "index_libros_on_idioma_id"
  end

  add_foreign_key "idiomas_libros", "idiomas"
  add_foreign_key "idiomas_libros", "libros"
  add_foreign_key "libros", "idiomas"
end
