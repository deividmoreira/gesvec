class CreatePermissaos < ActiveRecord::Migration
  def self.up
    create_table :permissaos do |t|
      t.string :nome
      t.string :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :permissaos
  end
end
