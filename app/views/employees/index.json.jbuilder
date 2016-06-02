json.array!(@employees) do |employee|
  json.extract! employee, :id, :nombre, :direccion, :turno, :telefono
  json.url employee_url(employee, format: :json)
end
