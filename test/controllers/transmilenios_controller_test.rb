require 'test_helper'

class TransmileniosControllerTest < ActionController::TestCase
  setup do
    @transmilenio = transmilenios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transmilenios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transmilenio" do
    assert_difference('Transmilenio.count') do
      post :create, transmilenio: { address: @transmilenio.address, condition: @transmilenio.condition, orientation: @transmilenio.orientation, polygon: @transmilenio.polygon, spot: @transmilenio.spot, strangeness_fvs: @transmilenio.strangeness_fvs, strangeness_mebog: @transmilenio.strangeness_mebog }
    end

    assert_redirected_to transmilenio_path(assigns(:transmilenio))
  end

  test "should show transmilenio" do
    get :show, id: @transmilenio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transmilenio
    assert_response :success
  end

  test "should update transmilenio" do
    patch :update, id: @transmilenio, transmilenio: { address: @transmilenio.address, condition: @transmilenio.condition, orientation: @transmilenio.orientation, polygon: @transmilenio.polygon, spot: @transmilenio.spot, strangeness_fvs: @transmilenio.strangeness_fvs, strangeness_mebog: @transmilenio.strangeness_mebog }
    assert_redirected_to transmilenio_path(assigns(:transmilenio))
  end

  test "should destroy transmilenio" do
    assert_difference('Transmilenio.count', -1) do
      delete :destroy, id: @transmilenio
    end

    assert_redirected_to transmilenios_path
  end
end
