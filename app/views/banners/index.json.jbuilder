json.array!(@banners) do |banner|
  json.extract! banner, :archivo, :url, :cliente_id
  json.url banner_url(banner, format: :json)
end
