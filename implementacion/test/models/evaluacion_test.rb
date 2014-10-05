# == Schema Information
#
# Table name: evaluacions
#
#  id                        :integer          not null, primary key
#  porc_sugerido_condonacion :integer
#  concepto                  :string(255)
#  evaluador                 :string(255)
#  informe                   :string(255)
#  created_at                :datetime
#  updated_at                :datetime
#

require 'test_helper'

class EvaluacionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
