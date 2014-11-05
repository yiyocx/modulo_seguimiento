# == Schema Information
#
# Table name: visita_tecnicas
#
#  id                :integer          not null, primary key
#  observacion       :text
#  porc_cumplimiento :float
#  tipo_proyeccion   :integer
#  created_at        :datetime
#  updated_at        :datetime
#

# Clase que representa una visita tecnica
class VisitaTecnica < ActiveRecord::Base
  belongs_to :proyecto
end
