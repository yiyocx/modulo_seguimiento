require 'test_helper'

# Test para el Controlador Propuestas
class PropuestasControllerTest < ActionController::TestCase
  setup do
    @propuesta = propuestas(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:propuestas)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create propuesta' do
    assert_difference('Propuesta.count') do
      post :create,
           propuesta: {
             estado: @propuesta.estado,
             nombre: @propuesta.nombre,
             numero: @propuesta.numero,
             proyecto_id: @propuesta.proyecto_id }
    end

    assert_redirected_to propuesta_path(assigns(:propuesta))
  end

  test 'should show propuesta' do
    get :show, id: @propuesta
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @propuesta
    assert_response :success
  end

  test 'should update propuesta' do
    patch :update, id: @propuesta,
                   propuesta: {
                     estado: @propuesta.estado,
                     nombre: @propuesta.nombre,
                     numero: @propuesta.numero,
                     proyecto_id: @propuesta.proyecto_id }
    assert_redirected_to propuesta_path(assigns(:propuesta))
  end

  test 'should destroy propuesta' do
    assert_difference('Propuesta.count', -1) do
      delete :destroy, id: @propuesta
    end

    assert_redirected_to propuestas_path
  end
end
