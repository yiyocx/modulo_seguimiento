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

require 'test_helper'

# Prueba unitaria para evaluaciones
class BecarioTest < ActiveSupport::TestCase
  test 'Ingreso de un nuevo becario' do
    creado = Becario.create(nombre: 'Edward', apellido1: 'Cuaspa')
    recuperado = Becario.find_by(nombre: 'Edward', apellido1: 'Cuaspa')

    assert creado.id == recuperado.id, 'Deben ser el mismo registro'
  end

  test 'Los datos de prueba estan registrados' do
    becario = Becario.find_by(apellido1: 'Molina')

    assert_not_nil becario, 'El becario no está registrado'

    assert_equal(becario.id, becarios(:one).id)
  end
end
