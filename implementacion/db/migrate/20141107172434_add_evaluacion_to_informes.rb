class AddEvaluacionToInformes < ActiveRecord::Migration
  def change
    add_reference :informes, :evaluacion, index: true
  end
end
