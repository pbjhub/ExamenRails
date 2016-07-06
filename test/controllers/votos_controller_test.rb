require 'test_helper'

class VotosControllerTest < ActionController::TestCase
  setup do
    @voto = votos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:votos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voto" do
    assert_difference('Voto.count') do
      post :create, voto: { email: @voto.email, heroe: @voto.heroe }
    end

    assert_redirected_to voto_path(assigns(:voto))
  end

  test "should show voto" do
    get :show, id: @voto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voto
    assert_response :success
  end

  test "should update voto" do
    patch :update, id: @voto, voto: { email: @voto.email, heroe: @voto.heroe }
    assert_redirected_to voto_path(assigns(:voto))
  end

  test "should destroy voto" do
    assert_difference('Voto.count', -1) do
      delete :destroy, id: @voto
    end

    assert_redirected_to votos_path
  end
end
