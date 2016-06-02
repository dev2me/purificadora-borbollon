json.array!(@clients) do |client|
  json.extract! client, :id, :name, :direccion, :telefono
  json.url client_url(client, format: :json)
end
