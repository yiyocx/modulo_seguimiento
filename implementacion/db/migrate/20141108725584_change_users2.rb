class ChangeUsers2 < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.belongs_to :evaluador, index: true
    end
  end
end
