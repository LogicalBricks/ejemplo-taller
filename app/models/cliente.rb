class Cliente < ActiveRecord::Base
	validates :rfc, presence: true
	validates :razon_social, presence: true
	validates :direccion, presence: true
	validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/,
    message: "Only letters allowed" }
    validates :nombre_contacto, presence: true
    validates :numero, presence: true, numericality: true
end
