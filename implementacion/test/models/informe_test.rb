# == Schema Information
#
# Table name: informes
#
#  id                    :integer          not null, primary key
#  descripcion           :text
#  es_final              :boolean
#  fecha                 :date
#  tipo                  :integer
#  proyecto_id           :integer
#  created_at            :datetime
#  updated_at            :datetime
#  document_file_name    :string(255)
#  document_content_type :string(255)
#  document_file_size    :integer
#  document_updated_at   :datetime
#

require 'test_helper'

class InformeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
