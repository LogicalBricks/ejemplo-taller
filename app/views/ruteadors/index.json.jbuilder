json.array!(@ruteadors) do |ruteador|
  json.extract! ruteador, :usuario, :password, :puerto, :nombre, :observaciones
  json.url ruteador_url(ruteador, format: :json)
end
