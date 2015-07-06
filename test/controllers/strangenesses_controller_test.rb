require 'test_helper'

class StrangenessesControllerTest < ActionController::TestCase
  setup do
    @strangeness = strangenesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:strangenesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create strangeness" do
    assert_difference('Strangeness.count') do
      post :create, strangeness: { strangeness_fvs: @strangeness.strangeness_fvs, strangeness_id: @strangeness.strangeness_id, strangeness_mebog: @strangeness.strangeness_mebog, strangeness_type: @strangeness.strangeness_type }
    end

    assert_redirected_to strangeness_path(assigns(:strangeness))
  end

  test "should show strangeness" do
    get :show, id: @strangeness
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @strangeness
    assert_response :success
  end

  test "should update strangeness" do
    patch :update, id: @strangeness, strangeness: { strangeness_fvs: @strangeness.strangeness_fvs, strangeness_id: @strangeness.strangeness_id, strangeness_mebog: @strangeness.strangeness_mebog, strangeness_type: @strangeness.strangeness_type }
    assert_redirected_to strangeness_path(assigns(:strangeness))
  end

  test "should destroy strangeness" do
    assert_difference('Strangeness.count', -1) do
      delete :destroy, id: @strangeness
    end

    assert_redirected_to strangenesses_path
  end
end
