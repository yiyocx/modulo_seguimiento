class CambiarEstadoAStringPropuesta < ActiveRecord::Migration
  def change
    change_column :propuestas, :estado, :string
  end
end
