class CreateApoyoInstitucionals < ActiveRecord::Migration
  def change
    create_table :apoyo_institucionals do |t|
      t.integer :tipo
      t.float :porc_cumplimiento
      t.text :comentario

      t.timestamps
    end
  end
end
