# == Schema Information
#
# Table name: contratos
#
#  id                 :integer          not null, primary key
#  num_convenio       :integer
#  tipo_convenio      :integer
#  valor_total        :float
#  num_contrato       :integer
#  fecha_inicio       :date
#  fecha_suscripcion  :date
#  fecha_legalizacion :date
#  fecha_finalizacion :date
#  objeto             :string(255)
#  plazo              :integer
#  area_responsable   :string(255)
#  supervisor         :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#

require 'test_helper'

class ContratoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
