json.array!(@clientes) do |cliente|
  json.extract! cliente, :RFC, :razon_social, :direccion, :telefono, :email, :nombre_contacto
  json.url cliente_url(cliente, format: :json)
end
