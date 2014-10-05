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

class Evaluacion < ActiveRecord::Base
end
