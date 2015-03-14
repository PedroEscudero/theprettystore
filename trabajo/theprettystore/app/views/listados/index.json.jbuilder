json.array!(@listados) do |listado|
  json.extract! listado, :id, :name, :description, :price
  json.url listado_url(listado, format: :json)
end
