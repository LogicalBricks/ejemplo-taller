json.array!(@anuncios) do |anuncio|
  json.extract! anuncio, :fecha_inicio, :fecha_fin, :ruteador_id
  json.url anuncio_url(anuncio, format: :json)
end
