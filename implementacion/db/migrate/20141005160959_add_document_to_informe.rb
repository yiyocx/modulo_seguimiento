class AddDocumentToInforme < ActiveRecord::Migration
  def change
    change_table :informes do |t|
      t.attachment :document
    end
  end
end
