class AddNumConvocatoriaToProyectos < ActiveRecord::Migration
  def change
    add_column :proyectos, :num_convocatoria, :integer
  end
end
