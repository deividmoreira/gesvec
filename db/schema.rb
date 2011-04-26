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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110426171232) do

  create_table "combustivels", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modelos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "perfils", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "permissao_id"
  end

  create_table "perfils_permissoes", :id => false, :force => true do |t|
    t.integer "perfil_id"
    t.integer "restaurante_id"
  end

  create_table "permissaos", :force => true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "matricula"
    t.string   "login"
    t.string   "senha"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "perfil_id"
  end

  create_table "veiculos", :force => true do |t|
    t.string   "placa"
    t.string   "chassi"
    t.string   "renavam"
    t.string   "serie"
    t.integer  "ano_fabricacao"
    t.integer  "ano_modelo"
    t.boolean  "possui_seguro"
    t.date     "data_cadastro"
    t.integer  "combustivel_id"
    t.integer  "modelo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
