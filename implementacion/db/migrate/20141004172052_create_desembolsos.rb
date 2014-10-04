class CreateDesembolsos < ActiveRecord::Migration
  def change
    create_table :desembolsos do |t|
      t.integer :estado
      t.date :fecha_solicitud
      t.float :valor
      t.float :girado
      t.date :fecha_giro
      t.text :condiciones
      t.belongs_to :proyecto, index: true

      t.timestamps
    end
  end
end
