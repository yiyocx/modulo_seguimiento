class CreateNotificacions < ActiveRecord::Migration
  def change
    create_table :notificacions do |t|
      t.string :mensaje

      t.timestamps
    end
  end
end
