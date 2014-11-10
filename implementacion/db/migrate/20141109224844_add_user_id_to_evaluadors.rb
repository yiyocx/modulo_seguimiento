class AddUserIdToEvaluadors < ActiveRecord::Migration
  def change
    add_reference :evaluadors, :user, index: true
  end
end
