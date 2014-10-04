class CreateVisitaTecnicas < ActiveRecord::Migration
  def change
    create_table :visita_tecnicas do |t|
      t.text :observacion
      t.float :porc_cumplimiento
      t.integer :tipo_proyeccion

      t.timestamps
    end
  end
end
