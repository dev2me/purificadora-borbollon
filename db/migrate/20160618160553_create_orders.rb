class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :pedido
      t.date :fecha_entrada
      t.date :fecha_salida
      t.references :client, foreign_key: true
    end
  end
end
