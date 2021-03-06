# == Schema Information
#
# Table name: becarios
#
#  id                        :integer          not null, primary key
#  condonacion_beneficiarios :string(255)
#  cumple_requisitos         :boolean
#  numero_DI                 :string(255)
#  nombre                    :string(255)
#  apellido1                 :string(255)
#  apellido2                 :string(255)
#  fecha_nacimiento          :date
#  departamento_nacimiento   :integer
#  genero                    :integer
#  email                     :string(255)
#  telefono                  :string(255)
#  direccion_residencial     :string(255)
#  ciudad                    :string(255)
#  direccion_profesional     :string(255)
#  info_beneficiario         :string(255)
#  info_programa_doctoral    :string(255)
#  info_tesis                :string(255)
#  registro_pasantia         :string(255)
#  contrato_id               :integer
#  created_at                :datetime
#  updated_at                :datetime
#  user_id                   :integer
#
# Indexes
#
#  index_becarios_on_contrato_id  (contrato_id)
#  index_becarios_on_user_id      (user_id)
#

# Clase que representa a un becario
class Becario < ActiveRecord::Base
  belongs_to :user
  belongs_to :contrato
  has_many :informes
end
