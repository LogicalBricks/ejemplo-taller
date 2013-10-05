class CreateAnuncios < ActiveRecord::Migration
  def change
    create_table :anuncios do |t|
      t.date :fecha_inicio
      t.date :fecha_fin
      t.references :ruteador, index: true

      t.timestamps
    end
  end
end
