class CreateBecarios < ActiveRecord::Migration
  def change
    create_table :becarios do |t|
      t.string :condonacion_beneficiarios
      t.boolean :cumple_requisitos
      t.string :datos_beneficiario
      t.string :info_beneficiario
      t.string :info_programa_doctoral
      t.string :info_tesis
      t.string :registro_pasantia

      t.timestamps
    end
  end
end
