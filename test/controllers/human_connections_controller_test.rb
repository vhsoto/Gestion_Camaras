require 'test_helper'

class HumanConnectionsControllerTest < ActionController::TestCase
  setup do
    @human_connection = human_connections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:human_connections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create human_connection" do
    assert_difference('HumanConnection.count') do
      post :create, human_connection: { address: @human_connection.address, condition: @human_connection.condition, orientation: @human_connection.orientation, polygon: @human_connection.polygon, spot: @human_connection.spot, strangeness_fvs: @human_connection.strangeness_fvs, strangeness_mebog: @human_connection.strangeness_mebog }
    end

    assert_redirected_to human_connection_path(assigns(:human_connection))
  end

  test "should show human_connection" do
    get :show, id: @human_connection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @human_connection
    assert_response :success
  end

  test "should update human_connection" do
    patch :update, id: @human_connection, human_connection: { address: @human_connection.address, condition: @human_connection.condition, orientation: @human_connection.orientation, polygon: @human_connection.polygon, spot: @human_connection.spot, strangeness_fvs: @human_connection.strangeness_fvs, strangeness_mebog: @human_connection.strangeness_mebog }
    assert_redirected_to human_connection_path(assigns(:human_connection))
  end

  test "should destroy human_connection" do
    assert_difference('HumanConnection.count', -1) do
      delete :destroy, id: @human_connection
    end

    assert_redirected_to human_connections_path
  end
end
