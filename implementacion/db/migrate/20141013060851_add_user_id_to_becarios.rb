class AddUserIdToBecarios < ActiveRecord::Migration
  def change
    add_reference :becarios, :user, index: true
  end
end
