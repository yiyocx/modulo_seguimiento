# == Schema Information
#
# Table name: evaluacions
#
#  id                        :integer          not null, primary key
#  porc_sugerido_condonacion :integer
#  concepto                  :string(255)
#  created_at                :datetime
#  updated_at                :datetime
#  evaluador_id              :integer
#  informe_id                :integer
#
class Evaluacion < ActiveRecord::Base
  belongs_to :evaluador
  belongs_to :informe
end
