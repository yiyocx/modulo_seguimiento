class RemoveUserIdFromInformes < ActiveRecord::Migration
  def change
    remove_column :informes, :user_id, :integer
  end
end
