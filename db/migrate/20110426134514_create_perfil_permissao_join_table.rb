class CreatePerfilPermissaoJoinTable < ActiveRecord::Migration
  def self.up
  	create_table :perfils_permissoes, :id => false do |t|
  		t.integer :perfil_id
  		t.integer :restaurante_id
  	end
  end

  def self.down
  	drop_table :perfils_permissoes
  end
end
