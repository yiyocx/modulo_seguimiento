# == Schema Information
#
# Table name: desembolsos
#
#  id              :integer          not null, primary key
#  estado          :integer
#  fecha_solicitud :date
#  valor           :float
#  girado          :float
#  fecha_giro      :date
#  condiciones     :text
#  proyecto_id     :integer
#  created_at      :datetime
#  updated_at      :datetime
#
# Indexes
#
#  index_desembolsos_on_proyecto_id  (proyecto_id)
#

require 'test_helper'

class DesembolsoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
