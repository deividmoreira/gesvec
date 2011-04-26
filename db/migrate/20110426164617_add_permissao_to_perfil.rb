class AddPermissaoToPerfil < ActiveRecord::Migration
  def self.up
  	add_column :perfils, :permissao_id, :integer
  end

  def self.down
  	remove_column :perfils, :permissao_id
  end
end
