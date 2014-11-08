require 'test_helper'

# Test para el Controlador Becarios
class BecariosControllerTest < ActionController::TestCase
  setup do
    @becario = becarios(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:becarios)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create becario' do
    assert_difference('Becario.count') do
      post :create,
           becario: {
             condonacion_beneficiarios: @becario.condonacion_beneficiarios,
             cumple_requisitos: @becario.cumple_requisitos,
             info_beneficiario: @becario.info_beneficiario,
             info_programa_doctoral: @becario.info_programa_doctoral,
             info_tesis: @becario.info_tesis,
             registro_pasantia: @becario.registro_pasantia }
    end

    assert_redirected_to becario_path(assigns(:becario))
  end

  test 'should show becario' do
    get :show, id: @becario
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @becario
    assert_response :success
  end

  test 'should update becario' do
    patch :update,
          id: @becario,
          becario:
          { condonacion_beneficiarios: @becario.condonacion_beneficiarios,
            cumple_requisitos: @becario.cumple_requisitos,
            info_beneficiario: @becario.info_beneficiario,
            info_programa_doctoral: @becario.info_programa_doctoral,
            info_tesis: @becario.info_tesis,
            registro_pasantia: @becario.registro_pasantia }
    assert_redirected_to becario_path(assigns(:becario))
  end

  test 'should destroy becario' do
    assert_difference('Becario.count', -1) do
      delete :destroy, id: @becario
    end

    assert_redirected_to becarios_path
  end
end
