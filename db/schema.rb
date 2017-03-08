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

ActiveRecord::Schema.define(version: 20170308130858) do

  create_table "estados", force: :cascade do |t|
    t.string "nombre"
    t.string "color"
  end

  create_table "personas", force: :cascade do |t|
    t.string   "dni"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "direccion"
    t.string   "localidad"
    t.string   "codigoPostal"
    t.string   "telefono"
    t.string   "correo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tramites", force: :cascade do |t|
    t.string   "id_tramite"
    t.string   "tipo"
    t.string   "comentario"
    t.integer  "persona_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "estado_id"
    t.string   "estado"
    t.string   "string"
    t.index ["estado_id"], name: "index_tramites_on_estado_id"
    t.index ["persona_id"], name: "index_tramites_on_persona_id"
  end

end
