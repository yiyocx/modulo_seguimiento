class AddNombreToUsuarioCols < ActiveRecord::Migration
  def change
    add_column :usuario_cols, :nombre, :string
  end
end
