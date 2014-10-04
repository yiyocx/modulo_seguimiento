require 'test_helper'

class VisitaTecnicasControllerTest < ActionController::TestCase
  setup do
    @visita_tecnica = visita_tecnicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visita_tecnicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visita_tecnica" do
    assert_difference('VisitaTecnica.count') do
      post :create, visita_tecnica: { observacion: @visita_tecnica.observacion, porc_cumplimiento: @visita_tecnica.porc_cumplimiento, tipo_proyeccion: @visita_tecnica.tipo_proyeccion }
    end

    assert_redirected_to visita_tecnica_path(assigns(:visita_tecnica))
  end

  test "should show visita_tecnica" do
    get :show, id: @visita_tecnica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visita_tecnica
    assert_response :success
  end

  test "should update visita_tecnica" do
    patch :update, id: @visita_tecnica, visita_tecnica: { observacion: @visita_tecnica.observacion, porc_cumplimiento: @visita_tecnica.porc_cumplimiento, tipo_proyeccion: @visita_tecnica.tipo_proyeccion }
    assert_redirected_to visita_tecnica_path(assigns(:visita_tecnica))
  end

  test "should destroy visita_tecnica" do
    assert_difference('VisitaTecnica.count', -1) do
      delete :destroy, id: @visita_tecnica
    end

    assert_redirected_to visita_tecnicas_path
  end
end
