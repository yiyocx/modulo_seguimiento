# == Schema Information
#
# Table name: informes
#
#  id          :integer          not null, primary key
#  descripcion :text
#  es_final    :boolean
#  fecha       :date
#  tipo        :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class InformeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
