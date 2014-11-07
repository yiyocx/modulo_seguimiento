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

ActiveRecord::Schema.define(version: 20141107162712) do

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
    t.string   "numero_DI"
    t.string   "nombre"
    t.string   "apellido1"
    t.string   "apellido2"
    t.date     "fecha_nacimiento"
    t.integer  "departamento_nacimiento"
    t.integer  "genero"
    t.string   "email"
    t.string   "telefono"
    t.string   "direccion_residencial"
    t.string   "ciudad"
    t.string   "direccion_profesional"
    t.string   "info_beneficiario"
    t.string   "info_programa_doctoral"
    t.string   "info_tesis"
    t.string   "registro_pasantia"
    t.integer  "contrato_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "becarios", ["contrato_id"], name: "index_becarios_on_contrato_id", using: :btree
  add_index "becarios", ["user_id"], name: "index_becarios_on_user_id", using: :btree

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "evaluador_id"
    t.integer  "informe_id"
  end

  create_table "evaluadors", force: true do |t|
    t.string   "area_conocimiento"
    t.date     "fecha_inicial"
    t.date     "fecha_final"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "informes", force: true do |t|
    t.text     "descripcion"
    t.boolean  "es_final"
    t.date     "fecha"
    t.integer  "tipo"
    t.integer  "proyecto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.integer  "becario_id"
    t.integer  "user_id"
    t.integer  "evaluador_id"
  end

  add_index "informes", ["becario_id"], name: "index_informes_on_becario_id", using: :btree
  add_index "informes", ["evaluador_id"], name: "index_informes_on_evaluador_id", using: :btree

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
    t.integer  "contrato_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "num_convocatoria"
    t.string   "nombre_convocatoria"
    t.integer  "tipo"
  end

  add_index "proyectos", ["contrato_id"], name: "index_proyectos_on_contrato_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role"
    t.string   "nombre"
    t.integer  "becario_id"
  end

  add_index "users", ["becario_id"], name: "index_users_on_becario_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "usuario_cols", force: true do |t|
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
