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

ActiveRecord::Schema.define(version: 20141004232120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apoyo_institucionals", force: true do |t|
    t.integer  "tipo"
    t.float    "porc_cumplimiento"
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "becarios", force: true do |t|
    t.string   "condonacion_beneficiarios"
    t.boolean  "cumple_requisitos"
    t.string   "datos_beneficiario"
    t.string   "info_beneficiario"
    t.string   "info_programa_doctoral"
    t.string   "info_tesis"
    t.string   "registro_pasantia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contratos", force: true do |t|
    t.integer  "num_convenio"
    t.integer  "tipo_convenio"
    t.float    "valor_total"
    t.integer  "num_contrato"
    t.date     "fecha_inicio"
    t.date     "fecha_suscripcion"
    t.date     "fecha_legalizacion"
    t.date     "fecha_finalizacion"
    t.string   "objeto"
    t.integer  "plazo"
    t.string   "area_responsable"
    t.string   "supervisor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "desembolsos", force: true do |t|
    t.integer  "estado"
    t.date     "fecha_solicitud"
    t.float    "valor"
    t.float    "girado"
    t.date     "fecha_giro"
    t.text     "condiciones"
    t.integer  "proyecto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "desembolsos", ["proyecto_id"], name: "index_desembolsos_on_proyecto_id", using: :btree

  create_table "dificultads", force: true do |t|
    t.integer  "tipo"
    t.text     "efecto"
    t.text     "posible_solucion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evaluacions", force: true do |t|
    t.integer  "porc_sugerido_condonacion"
    t.string   "concepto"
    t.string   "evaluador"
    t.string   "informe"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evaluadors", force: true do |t|
    t.string   "area_conocimiento"
    t.date     "fecha_inicial"
    t.date     "fecha_final"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notificacions", force: true do |t|
    t.string   "mensaje"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proyectos", force: true do |t|
    t.integer  "duracion"
    t.string   "estado"
    t.integer  "linea_tematica"
    t.string   "lugar_ejecucion"
    t.string   "titulo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visita_tecnicas", force: true do |t|
    t.text     "observacion"
    t.float    "porc_cumplimiento"
    t.integer  "tipo_proyeccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
