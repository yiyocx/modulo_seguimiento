class AddDepartamentoToBecario < ActiveRecord::Migration
  def change
    add_reference :becarios, :departamento, index: true
  end
end
