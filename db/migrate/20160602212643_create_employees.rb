class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :nombre
      t.string :direccion
      t.string :turno
      t.string :telefono

      t.timestamps
    end
  end
end
