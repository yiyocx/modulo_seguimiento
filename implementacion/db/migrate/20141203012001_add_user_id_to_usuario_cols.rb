class AddUserIdToUsuarioCols < ActiveRecord::Migration
  def change
    add_reference :usuario_cols, :user, index: true
  end
end
