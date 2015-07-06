require 'test_helper'

class UnitTemporalsControllerTest < ActionController::TestCase
  setup do
    @unit_temporal = unit_temporals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unit_temporals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unit_temporal" do
    assert_difference('UnitTemporal.count') do
      post :create, unit_temporal: { address: @unit_temporal.address, condition: @unit_temporal.condition, orientation: @unit_temporal.orientation, polygon: @unit_temporal.polygon, spot: @unit_temporal.spot, strangeness_fvs: @unit_temporal.strangeness_fvs, strangeness_mebog: @unit_temporal.strangeness_mebog }
    end

    assert_redirected_to unit_temporal_path(assigns(:unit_temporal))
  end

  test "should show unit_temporal" do
    get :show, id: @unit_temporal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unit_temporal
    assert_response :success
  end

  test "should update unit_temporal" do
    patch :update, id: @unit_temporal, unit_temporal: { address: @unit_temporal.address, condition: @unit_temporal.condition, orientation: @unit_temporal.orientation, polygon: @unit_temporal.polygon, spot: @unit_temporal.spot, strangeness_fvs: @unit_temporal.strangeness_fvs, strangeness_mebog: @unit_temporal.strangeness_mebog }
    assert_redirected_to unit_temporal_path(assigns(:unit_temporal))
  end

  test "should destroy unit_temporal" do
    assert_difference('UnitTemporal.count', -1) do
      delete :destroy, id: @unit_temporal
    end

    assert_redirected_to unit_temporals_path
  end
end
