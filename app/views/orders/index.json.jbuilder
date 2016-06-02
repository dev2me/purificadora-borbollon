json.array!(@orders) do |order|
  json.extract! order, :id, :tipo_pedido, :fecha_entrada, :fecha_salida, :client_id
  json.url order_url(order, format: :json)
end
