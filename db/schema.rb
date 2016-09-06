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

ActiveRecord::Schema.define(version: 20160906171529) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comentarios", force: :cascade do |t|
    t.string   "comentario"
    t.integer  "local_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comunas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "provincia_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "glosa_patentes", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "horarios", force: :cascade do |t|
    t.time     "apertura"
    t.time     "cierre"
    t.integer  "local_id"
    t.integer  "dia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locales", force: :cascade do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "direccion"
    t.integer  "comuna_id"
    t.integer  "glosa_patente_id"
    t.string   "web"
    t.integer  "telefono"
    t.float    "latitud"
    t.float    "longuitud"
    t.integer  "tipo_patente_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "medios_pago_locales", id: false, force: :cascade do |t|
    t.integer  "local_id"
    t.integer  "medios_pago_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "medios_pagos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provincias", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regiones", force: :cascade do |t|
    t.string   "nombre"
    t.string   "corfo"
    t.string   "codigo"
    t.integer  "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_patentes", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comentarios", "locales", column: "local_id"
  add_foreign_key "comunas", "provincias"
  add_foreign_key "horarios", "locales", column: "local_id"
  add_foreign_key "locales", "comunas"
  add_foreign_key "locales", "glosa_patentes"
  add_foreign_key "locales", "tipo_patentes"
  add_foreign_key "medios_pago_locales", "locales", column: "local_id"
  add_foreign_key "medios_pago_locales", "medios_pagos"
  add_foreign_key "provincias", "regiones", column: "region_id"
end
