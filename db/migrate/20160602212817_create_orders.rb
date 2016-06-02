class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :tipo_pedido
      t.date :fecha_entrada
      t.date :fecha_salida
      t.integer :client_id

      t.timestamps
    end
  end
end
