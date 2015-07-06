require 'test_helper'

class OwnsControllerTest < ActionController::TestCase
  setup do
    @own = owns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:owns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create own" do
    assert_difference('Own.count') do
      post :create, own: { address: @own.address, condition: @own.condition, orientation: @own.orientation, polygon: @own.polygon, spot: @own.spot, strangeness_fvs: @own.strangeness_fvs, strangeness_mebog: @own.strangeness_mebog }
    end

    assert_redirected_to own_path(assigns(:own))
  end

  test "should show own" do
    get :show, id: @own
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @own
    assert_response :success
  end

  test "should update own" do
    patch :update, id: @own, own: { address: @own.address, condition: @own.condition, orientation: @own.orientation, polygon: @own.polygon, spot: @own.spot, strangeness_fvs: @own.strangeness_fvs, strangeness_mebog: @own.strangeness_mebog }
    assert_redirected_to own_path(assigns(:own))
  end

  test "should destroy own" do
    assert_difference('Own.count', -1) do
      delete :destroy, id: @own
    end

    assert_redirected_to owns_path
  end
end
