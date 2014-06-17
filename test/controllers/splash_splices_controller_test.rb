require 'test_helper'

class SplashSplicesControllerTest < ActionController::TestCase
  setup do
    @splash_splice = splash_splices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:splash_splices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create splash_splice" do
    assert_difference('SplashSplice.count') do
      post :create, splash_splice: { art_id: @splash_splice.art_id, id: @splash_splice.id, order: @splash_splice.order, path: @splash_splice.path, text: @splash_splice.text }
    end

    assert_redirected_to splash_splice_path(assigns(:splash_splice))
  end

  test "should show splash_splice" do
    get :show, id: @splash_splice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @splash_splice
    assert_response :success
  end

  test "should update splash_splice" do
    patch :update, id: @splash_splice, splash_splice: { art_id: @splash_splice.art_id, id: @splash_splice.id, order: @splash_splice.order, path: @splash_splice.path, text: @splash_splice.text }
    assert_redirected_to splash_splice_path(assigns(:splash_splice))
  end

  test "should destroy splash_splice" do
    assert_difference('SplashSplice.count', -1) do
      delete :destroy, id: @splash_splice
    end

    assert_redirected_to splash_splices_path
  end
end
