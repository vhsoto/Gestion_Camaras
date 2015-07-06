require 'test_helper'

class LeasedsControllerTest < ActionController::TestCase
  setup do
    @leased = leaseds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leaseds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leased" do
    assert_difference('Leased.count') do
      post :create, leased: { address: @leased.address, condition: @leased.condition, orientation: @leased.orientation, polygon: @leased.polygon, spot: @leased.spot, strangeness_fvs: @leased.strangeness_fvs, strangeness_mebog: @leased.strangeness_mebog }
    end

    assert_redirected_to leased_path(assigns(:leased))
  end

  test "should show leased" do
    get :show, id: @leased
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leased
    assert_response :success
  end

  test "should update leased" do
    patch :update, id: @leased, leased: { address: @leased.address, condition: @leased.condition, orientation: @leased.orientation, polygon: @leased.polygon, spot: @leased.spot, strangeness_fvs: @leased.strangeness_fvs, strangeness_mebog: @leased.strangeness_mebog }
    assert_redirected_to leased_path(assigns(:leased))
  end

  test "should destroy leased" do
    assert_difference('Leased.count', -1) do
      delete :destroy, id: @leased
    end

    assert_redirected_to leaseds_path
  end
end
