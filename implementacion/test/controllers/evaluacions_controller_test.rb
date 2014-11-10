require 'test_helper'

# Test para el Controlador Evaluaciones
class EvaluacionsControllerTest < ActionController::TestCase
  setup do
    @evaluacion = evaluacions(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluacions)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create evaluacion' do
    assert_difference('Evaluacion.count') do
      post :create,
           evaluacion: { concepto: @evaluacion.concepto,
                         evaluador_id: @evaluacion.evaluador,
                         informe_id: @evaluacion.informe,
                         porc_sugerido_condonacion:
                         @evaluacion.porc_sugerido_condonacion }
    end

    assert_redirected_to evaluacion_path(assigns(:evaluacion))
  end

  test 'should show evaluacion' do
    get :show, id: @evaluacion
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @evaluacion
    assert_response :success
  end

  test 'should update evaluacion' do
    patch :update, id: @evaluacion,
                   evaluacion: {
                     concepto: @evaluacion.concepto,
                     evaluador_id: @evaluacion.evaluador,
                     informe_id: @evaluacion.informe,
                     porc_sugerido_condonacion:
                     @evaluacion.porc_sugerido_condonacion }
    assert_redirected_to evaluacion_path(assigns(:evaluacion))
  end

  test 'should destroy evaluacion' do
    assert_difference('Evaluacion.count', -1) do
      delete :destroy, id: @evaluacion
    end

    assert_redirected_to evaluacions_path
  end
end
