class CreateMotorista < ActiveRecord::Migration
  def self.up
    create_table :motorista do |t|
      t.string :nome
      t.string :cpf
      t.string :cnh
      t.date :data_validade
      t.boolean :status

      t.timestamps
    end
  end

  def self.down
    drop_table :motorista
  end
end
