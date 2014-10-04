require 'test_helper'

class DesembolsosControllerTest < ActionController::TestCase
  setup do
    @desembolso = desembolsos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:desembolsos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create desembolso" do
    assert_difference('Desembolso.count') do
      post :create, desembolso: { condiciones: @desembolso.condiciones, estado: @desembolso.estado, fecha_giro: @desembolso.fecha_giro, fecha_solicitud: @desembolso.fecha_solicitud, girado: @desembolso.girado, proyecto_id: @desembolso.proyecto_id, valor: @desembolso.valor }
    end

    assert_redirected_to desembolso_path(assigns(:desembolso))
  end

  test "should show desembolso" do
    get :show, id: @desembolso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @desembolso
    assert_response :success
  end

  test "should update desembolso" do
    patch :update, id: @desembolso, desembolso: { condiciones: @desembolso.condiciones, estado: @desembolso.estado, fecha_giro: @desembolso.fecha_giro, fecha_solicitud: @desembolso.fecha_solicitud, girado: @desembolso.girado, proyecto_id: @desembolso.proyecto_id, valor: @desembolso.valor }
    assert_redirected_to desembolso_path(assigns(:desembolso))
  end

  test "should destroy desembolso" do
    assert_difference('Desembolso.count', -1) do
      delete :destroy, id: @desembolso
    end

    assert_redirected_to desembolsos_path
  end
end
