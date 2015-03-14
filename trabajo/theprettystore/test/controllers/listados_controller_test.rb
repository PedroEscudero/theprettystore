require 'test_helper'

class ListadosControllerTest < ActionController::TestCase
  setup do
    @listado = listados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listado" do
    assert_difference('Listado.count') do
      post :create, listado: { description: @listado.description, name: @listado.name, price: @listado.price }
    end

    assert_redirected_to listado_path(assigns(:listado))
  end

  test "should show listado" do
    get :show, id: @listado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listado
    assert_response :success
  end

  test "should update listado" do
    patch :update, id: @listado, listado: { description: @listado.description, name: @listado.name, price: @listado.price }
    assert_redirected_to listado_path(assigns(:listado))
  end

  test "should destroy listado" do
    assert_difference('Listado.count', -1) do
      delete :destroy, id: @listado
    end

    assert_redirected_to listados_path
  end
end
