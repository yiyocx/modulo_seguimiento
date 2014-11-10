class AddNombreToEvaluador < ActiveRecord::Migration
  def change
    add_column :evaluadors, :nombre, :string
  end
end
