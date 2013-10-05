class Ruteador < ActiveRecord::Base
	validates_presence_of :nombre
	validates_presence_of :password
	validates_presence_of :puerto
	validates_numericality_of :puerto
	validates_presence_of :usuario
	validates_presence_of :observaciones
end
