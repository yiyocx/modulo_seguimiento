# == Schema Information
#
# Table name: apoyo_institucionals
#
#  id                :integer          not null, primary key
#  tipo              :integer
#  porc_cumplimiento :float
#  comentario        :text
#  created_at        :datetime
#  updated_at        :datetime
#

# Clase que representa el apoyo institucional
class ApoyoInstitucional < ActiveRecord::Base
  belongs_to :visita_tecnica
end
