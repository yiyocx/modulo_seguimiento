class ChangeUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :nombre
      t.belongs_to :becario, index: true
    end
  end
end
