# == Schema Information
#
# Table name: dificultads
#
#  id               :integer          not null, primary key
#  tipo             :integer
#  efecto           :text
#  posible_solucion :text
#  created_at       :datetime
#  updated_at       :datetime
#

require 'test_helper'

class DificultadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
