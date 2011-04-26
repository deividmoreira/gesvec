class Usuario < ActiveRecord::Base
	belongs_to :perfil
	
	validates_presence_of :perfil_id
	validates_associated :perfil
end
