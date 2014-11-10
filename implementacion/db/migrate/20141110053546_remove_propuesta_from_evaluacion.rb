class RemovePropuestaFromEvaluacion < ActiveRecord::Migration
  def change
    remove_reference :evaluacions, :propuesta, index: true
  end
end
