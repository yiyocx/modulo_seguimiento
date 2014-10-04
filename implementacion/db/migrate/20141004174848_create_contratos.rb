class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.integer :num_convenio
      t.integer :tipo_convenio
      t.float :valor_total
      t.integer :num_contrato
      t.date :fecha_inicio
      t.date :fecha_suscripcion
      t.date :fecha_legalizacion
      t.date :fecha_finalizacion
      t.string :objeto
      t.integer :plazo
      t.string :area_responsable
      t.string :supervisor

      t.timestamps
    end
  end
end
