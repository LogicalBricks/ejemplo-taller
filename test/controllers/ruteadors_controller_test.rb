require 'test_helper'

class RuteadorsControllerTest < ActionController::TestCase
  setup do
    @ruteador = ruteadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ruteadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ruteador" do
    assert_difference('Ruteador.count') do
      post :create, ruteador: { nombre: @ruteador.nombre, observaciones: @ruteador.observaciones, password: @ruteador.password, puerto: @ruteador.puerto, usuario: @ruteador.usuario }
    end

    assert_redirected_to ruteador_path(assigns(:ruteador))
  end

  test "should show ruteador" do
    get :show, id: @ruteador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ruteador
    assert_response :success
  end

  test "should update ruteador" do
    patch :update, id: @ruteador, ruteador: { nombre: @ruteador.nombre, observaciones: @ruteador.observaciones, password: @ruteador.password, puerto: @ruteador.puerto, usuario: @ruteador.usuario }
    assert_redirected_to ruteador_path(assigns(:ruteador))
  end

  test "should destroy ruteador" do
    assert_difference('Ruteador.count', -1) do
      delete :destroy, id: @ruteador
    end

    assert_redirected_to ruteadors_path
  end
end
