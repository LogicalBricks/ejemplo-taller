class Ruteador < ActiveRecord::Base
	validates_presence_of :nombre
	validates_presence_of :password
	validates_presence_of :puerto
end
