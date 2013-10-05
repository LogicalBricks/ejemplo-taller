class Anuncio < ActiveRecord::Base
  belongs_to :ruteador
  validates :fecha_inicio, presence: true 
  validates :fecha_fin, presence: true
  validates :ruteador_id, presence: true
end
