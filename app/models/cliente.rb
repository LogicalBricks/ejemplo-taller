class Cliente < ActiveRecord::Base
	validates :rfc, presence: true
end
