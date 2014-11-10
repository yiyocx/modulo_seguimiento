class AddEvaluacionToPropuesta < ActiveRecord::Migration
  def change
    add_reference :propuestas, :evaluacion, index: true
  end
end
