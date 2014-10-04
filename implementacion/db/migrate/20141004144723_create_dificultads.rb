class CreateDificultads < ActiveRecord::Migration
  def change
    create_table :dificultads do |t|
      t.integer :tipo
      t.text :efecto
      t.text :posible_solucion

      t.timestamps
    end
  end
end
