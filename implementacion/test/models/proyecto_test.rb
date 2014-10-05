# == Schema Information
#
# Table name: proyectos
#
#  id              :integer          not null, primary key
#  duracion        :integer
#  estado          :string(255)
#  linea_tematica  :integer
#  lugar_ejecucion :string(255)
#  titulo          :string(255)
#  contrato_id     :integer
#  created_at      :datetime
#  updated_at      :datetime
#
# Indexes
#
#  index_proyectos_on_contrato_id  (contrato_id)
#

require 'test_helper'

class ProyectoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
