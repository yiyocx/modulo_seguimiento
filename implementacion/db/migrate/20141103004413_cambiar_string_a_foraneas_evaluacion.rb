class CambiarStringAForaneasEvaluacion < ActiveRecord::Migration
  def change
    change_table :evaluacions do |t|
      t.remove :evaluador
      t.remove :informe

      t.belongs_to :evaluador
      t.belongs_to :informe
    end
  end
end
