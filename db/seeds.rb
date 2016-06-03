# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Crear clientes
Client.create(name: "Jesus Rosas", direccion: "Av del monte s/n", telefono: "7221104340")
Order.create(tipo_pedido: "Agua embotellada", fecha_entrada: "2/6/2016", fecha_salida: "2/6/2016", client_id: 1)
User.create!(email: 'infinitdeveloperofficial@gmail.com', password: 'qKq$}nCY3N', password_confirmation: 'qKq$}nCY3N')