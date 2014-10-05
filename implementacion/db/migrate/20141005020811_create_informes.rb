class CreateInformes < ActiveRecord::Migration
  def change
    create_table :informes do |t|
      t.text :descripcion
      t.boolean :es_final
      t.date :fecha
      t.integer :tipo
      t.integer :proyecto_id

      t.timestamps
    end
  end
end
