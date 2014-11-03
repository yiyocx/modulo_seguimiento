class AddUserIdToInformes < ActiveRecord::Migration
  def change
    add_column :informes, :user_id, :integer
  end
end
