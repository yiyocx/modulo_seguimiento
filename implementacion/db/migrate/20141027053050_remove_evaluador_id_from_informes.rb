class RemoveEvaluadorIdFromInformes < ActiveRecord::Migration
  def change
    remove_column :informes, :evaluador_id, :integer
  end
end
