class Permissao < ActiveRecord::Base
	has_and_belongs_to_many :perfils 
	
end
