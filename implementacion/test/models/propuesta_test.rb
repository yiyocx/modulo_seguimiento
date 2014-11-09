# == Schema Information
#
# Table name: propuestas
#
#  id          :integer          not null, primary key
#  numero      :integer
#  nombre      :string(255)
#  estado      :string(255)
#  proyecto_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_propuestas_on_proyecto_id  (proyecto_id)
#

require 'test_helper'

class PropuestaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
