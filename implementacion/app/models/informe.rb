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
#  becario_id            :integer
#  evaluador_id          :integer
#  evaluacion_id         :integer
#  numero                :integer
#
# Indexes
#
#  index_informes_on_becario_id     (becario_id)
#  index_informes_on_evaluacion_id  (evaluacion_id)
#  index_informes_on_evaluador_id   (evaluador_id)
#

# Clase que representa un informe
class Informe < ActiveRecord::Base
  # rubocop:disable Documentation
  has_attached_file :document, styles: { thumbnail: '60x60#' }
  enum tipo: { 'Técnico/Financiero' => 1, 'Avance/Final' => 2 }
  validates_attachment :document, content_type:
  { content_type: 'application/pdf' }

  belongs_to :becario
  belongs_to :user
  belongs_to :evaluador
  has_one :evaluacion
  accepts_nested_attributes_for :evaluacion
end
