class Perfil < ActiveRecord::Base
	has_many :usuarios
	has_and_belongs_to_many :permissoes
	
	validates_presence_of :nome
#	validate :validate_presence_of_more_than_one_permissao
	
#	def validate_presence_of_more_than_one_permissao
#		errors.add("permissão", "deve haver pelo menos uma permissão") if permissoes.empty?
#	end
		
end
