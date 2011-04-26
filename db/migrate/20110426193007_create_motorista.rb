class CreateMotorista < ActiveRecord::Migration
  def self.up
    create_table :motorista do |t|
      t.string :nome
      t.string :cpf
      t.string :cnh
      t.integer :status
      t.date :data_validade

      t.timestamps
    end
  end

  def self.down
    drop_table :motorista
  end
end
