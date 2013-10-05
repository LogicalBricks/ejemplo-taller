class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :RFC
      t.string :razon_social
      t.string :direccion
      t.string :telefono
      t.string :email
      t.string :nombre_contacto

      t.timestamps
    end
  end
end
