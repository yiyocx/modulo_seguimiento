class AddEvaluadorIdToInformes < ActiveRecord::Migration
  def change
    add_reference :informes, :evaluador, index: true
  end
end
