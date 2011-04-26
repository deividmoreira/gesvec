class CreateVeiculos < ActiveRecord::Migration
  def self.up
    create_table :veiculos do |t|
      t.string :placa
      t.string :chassi
      t.string :renavam
      t.string :serie
      t.integer :ano_fabricacao
      t.integer :ano_modelo
      t.boolean :possui_seguro
      t.date :data_cadastro
	  t.integer :combustivel_id
	  t.integer :modelo_id
	  	
      t.timestamps
    end
    
  end

  def self.down
    drop_table :veiculos
  end
end
