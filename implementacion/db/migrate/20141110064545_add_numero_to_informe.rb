class AddNumeroToInforme < ActiveRecord::Migration
  def change
    add_column :informes, :numero, :integer
  end
end
