class CreateBecarios < ActiveRecord::Migration
  def change
    create_table :becarios do |t|
      t.string :condonacion_beneficiarios
      t.boolean :cumple_requisitos
      t.string :numero_DI
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.date :fecha_nacimiento
      t.integer :departamento_nacimiento 
      t.integer :genero
      t.string :email
      t.string :telefono
      t.string :direccion_residencial
      t.string :ciudad
      t.string :direccion_profesional
      t.string :info_beneficiario
      t.string :info_programa_doctoral
      t.string :info_tesis
      t.string :registro_pasantia
      t.belongs_to :contrato, index: true
      t.timestamps
    end
  end
end
