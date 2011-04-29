class Veiculo < ActiveRecord::Base
	belongs_to :combustivel
	belongs_to :modelo
	
	validates_associated :combustivel, :modelo
	validates_presence_of :combustivel_id, :modelo_id, :placa, :chassi, :renavam
end
