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

require 'test_helper'
require 'byebug'

# Prueba unitaria para evaluaciones
class EvaluacionTest < ActiveSupport::TestCase
  test 'Los datos de prueba estan registrados' do
    evaluacion = Evaluacion.find_by(concepto: 'el concepto del de 70')

    assert_not_nil evaluacion, 'La evaluacion no está registrada'

    assert_equal(evaluacion.id, evaluacions(:two).id)
  end

  test 'Ingreso de una nueva evaluacion' do
    creado = Evaluacion.create(concepto: 'con nuevo concepto')
    recuperado = Evaluacion.find_by(concepto: 'con nuevo concepto')

    assert creado.id == recuperado.id, 'Deben ser el mismo registro'
  end
end
