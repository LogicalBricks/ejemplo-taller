class Cliente < ActiveRecord::Base
	validates :RFC, presence: true
end
