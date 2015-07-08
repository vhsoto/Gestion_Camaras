require 'test_helper'

class NewsControllerTest < ActionController::TestCase
  setup do
    @news = news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news" do
    assert_difference('New.count') do
      post :create, news: { fvs: @news.fvs, mebog: @news.mebog, newable_id: @news.newable_id, newable_type: @news.newable_type }
    end

    assert_redirected_to news_path(assigns(:news))
  end

  test "should show news" do
    get :show, id: @news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news
    assert_response :success
  end

  test "should update news" do
    patch :update, id: @news, news: { fvs: @news.fvs, mebog: @news.mebog, newable_id: @news.newable_id, newable_type: @news.newable_type }
    assert_redirected_to news_path(assigns(:news))
  end

  test "should destroy news" do
    assert_difference('New.count', -1) do
      delete :destroy, id: @news
    end

    assert_redirected_to news_path
  end
end
