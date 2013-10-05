class CreateRuteadors < ActiveRecord::Migration
  def change
    create_table :ruteadors do |t|
      t.string :usuario
      t.string :password
      t.string :puerto
      t.string :nombre
      t.text :observaciones

      t.timestamps
    end
  end
end
