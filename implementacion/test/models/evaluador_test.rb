# == Schema Information
#
# Table name: evaluadors
#
#  id                :integer          not null, primary key
#  area_conocimiento :string(255)
#  fecha_inicial     :date
#  fecha_final       :date
#  created_at        :datetime
#  updated_at        :datetime
#  user_id           :integer
#  nombre            :string(255)
#
# Indexes
#
#  index_evaluadors_on_user_id  (user_id)
#

require 'test_helper'

class EvaluadorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
