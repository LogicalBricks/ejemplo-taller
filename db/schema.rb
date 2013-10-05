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

ActiveRecord::Schema.define(version: 20131005185202) do

  create_table "anuncios", force: true do |t|
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.integer  "ruteador_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "anuncios", ["ruteador_id"], name: "index_anuncios_on_ruteador_id"

  create_table "banners", force: true do |t|
    t.string   "archivo"
    t.string   "url"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "banners", ["cliente_id"], name: "index_banners_on_cliente_id"

  create_table "clientes", force: true do |t|
    t.string   "rfc"
    t.string   "razon_social"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.string   "nombre_contacto"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "numero"
  end

  create_table "ruteadors", force: true do |t|
    t.string   "usuario"
    t.string   "password"
    t.string   "puerto"
    t.string   "nombre"
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "serie"
  end

end
