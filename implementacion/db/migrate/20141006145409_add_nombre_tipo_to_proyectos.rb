class AddNombreTipoToProyectos < ActiveRecord::Migration
  def change
    add_column :proyectos, :tipo, :integer
  end
end
