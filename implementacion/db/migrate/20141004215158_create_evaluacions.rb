class CreateEvaluacions < ActiveRecord::Migration
  def change
    create_table :evaluacions do |t|
      t.integer :porc_sugerido_condonacion
      t.string :concepto
      t.string :evaluador
      t.string :informe

      t.timestamps
    end
  end
end
