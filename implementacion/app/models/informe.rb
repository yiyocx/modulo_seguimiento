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

class Informe < ActiveRecord::Base
  belongs_to :becario
  belongs_to :evaluador
end
