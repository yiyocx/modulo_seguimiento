class CreatePropuestas < ActiveRecord::Migration
  def change
    create_table :propuestas do |t|
      t.integer :numero
      t.string :nombre
      t.boolean :estado
      t.belongs_to :proyecto, index: true

      t.timestamps
    end
  end
end
