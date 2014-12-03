class AddUsuarioColToUser < ActiveRecord::Migration
  def change
    add_reference :users, :usuario_col, index: true
  end
end
