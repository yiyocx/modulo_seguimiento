require 'test_helper'

# Test para el Controlador UsuarioCols
class UsuarioColsControllerTest < ActionController::TestCase
  setup do
    @usuario_col = usuario_cols(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuario_cols)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create usuario_col' do
    assert_difference('UsuarioCol.count') do
      post :create, usuario_col: {}
    end

    assert_redirected_to usuario_col_path(assigns(:usuario_col))
  end

  test 'should show usuario_col' do
    get :show, id: @usuario_col
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @usuario_col
    assert_response :success
  end

  test 'should update usuario_col' do
    patch :update, id: @usuario_col, usuario_col: {}
    assert_redirected_to usuario_col_path(assigns(:usuario_col))
  end

  test 'should destroy usuario_col' do
    assert_difference('UsuarioCol.count', -1) do
      delete :destroy, id: @usuario_col
    end

    assert_redirected_to usuario_cols_path
  end
end
