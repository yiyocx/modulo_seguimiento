class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.integer :duracion
      t.string :estado
      t.integer :linea_tematica
      t.string :lugar_ejecucion
      t.string :titulo

      t.timestamps
    end
  end
end
