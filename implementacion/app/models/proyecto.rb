# == Schema Information
#
# Table name: proyectos
#
#  id                  :integer          not null, primary key
#  duracion            :integer
#  estado              :string(255)
#  linea_tematica      :integer
#  lugar_ejecucion     :string(255)
#  titulo              :string(255)
#  contrato_id         :integer
#  created_at          :datetime
#  updated_at          :datetime
#  num_convocatoria    :integer
#  nombre_convocatoria :string(255)
#  tipo                :integer
#
# Indexes
#
#  index_proyectos_on_contrato_id  (contrato_id)
#

class Proyecto < ActiveRecord::Base
  belongs_to :contrato

  enum tipo: { 'Formación' => 0 }
end
