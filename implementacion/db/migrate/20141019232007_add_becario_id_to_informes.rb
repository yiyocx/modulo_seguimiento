class AddBecarioIdToInformes < ActiveRecord::Migration
  def change
    add_reference :informes, :becario, index: true
  end
end
