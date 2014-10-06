class AddNombreConvocatoriaToProyectos < ActiveRecord::Migration
  def change
    add_column :proyectos, :nombre_convocatoria, :string
  end
end
