class CreateUsuarioCols < ActiveRecord::Migration
  def change
    create_table :usuario_cols do |t|

      t.timestamps
    end
  end
end
