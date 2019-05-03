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

ActiveRecord::Schema.define(version: 2019_05_03_011820) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alunos", force: :cascade do |t|
    t.string "nome"
    t.string "documento"
    t.string "telefone"
    t.string "email"
    t.string "pai"
    t.string "mae"
    t.bigint "endereco_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["endereco_id"], name: "index_alunos_on_endereco_id"
  end

  create_table "anos", force: :cascade do |t|
    t.integer "ano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cidades", force: :cascade do |t|
    t.string "nome"
    t.bigint "estado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estado_id"], name: "index_cidades_on_estado_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nome"
    t.integer "carga_horaria"
    t.bigint "semestre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["semestre_id"], name: "index_cursos_on_semestre_id"
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string "nome"
    t.integer "carga_horaria"
    t.bigint "curso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_disciplinas_on_curso_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "rua"
    t.string "bairro"
    t.string "numero"
    t.string "cep"
    t.bigint "cidade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cidade_id"], name: "index_enderecos_on_cidade_id"
  end

  create_table "estados", force: :cascade do |t|
    t.string "nome"
    t.string "uf"
    t.bigint "pais_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pais_id"], name: "index_estados_on_pais_id"
  end

  create_table "pais", force: :cascade do |t|
    t.string "nome"
    t.string "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "nome"
    t.string "documento"
    t.string "telefone"
    t.string "email"
    t.bigint "endereco_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["endereco_id"], name: "index_professors_on_endereco_id"
  end

  create_table "semestres", force: :cascade do |t|
    t.string "nome"
    t.bigint "ano_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ano_id"], name: "index_semestres_on_ano_id"
  end

  add_foreign_key "alunos", "enderecos"
  add_foreign_key "cidades", "estados"
  add_foreign_key "cursos", "semestres"
  add_foreign_key "disciplinas", "cursos"
  add_foreign_key "enderecos", "cidades"
  add_foreign_key "estados", "pais", column: "pais_id"
  add_foreign_key "professors", "enderecos"
  add_foreign_key "semestres", "anos"
end
