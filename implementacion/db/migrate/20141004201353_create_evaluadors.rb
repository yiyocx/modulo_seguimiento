class CreateEvaluadors < ActiveRecord::Migration
  def change
    create_table :evaluadors do |t|
      t.string :area_conocimiento
      t.date :fecha_inicial
      t.date :fecha_final

      t.timestamps
    end
  end
end
