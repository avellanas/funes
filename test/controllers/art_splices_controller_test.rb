require 'test_helper'

class ArtSplicesControllerTest < ActionController::TestCase
  setup do
    @art_splice = art_splices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:art_splices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create art_splice" do
    assert_difference('ArtSplice.count') do
      post :create, art_splice: { art_id: @art_splice.art_id, order: @art_splice.order, path: @art_splice.path, text: @art_splice.text }
    end

    assert_redirected_to art_splice_path(assigns(:art_splice))
  end

  test "should show art_splice" do
    get :show, id: @art_splice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @art_splice
    assert_response :success
  end

  test "should update art_splice" do
    patch :update, id: @art_splice, art_splice: { art_id: @art_splice.art_id, order: @art_splice.order, path: @art_splice.path, text: @art_splice.text }
    assert_redirected_to art_splice_path(assigns(:art_splice))
  end

  test "should destroy art_splice" do
    assert_difference('ArtSplice.count', -1) do
      delete :destroy, id: @art_splice
    end

    assert_redirected_to art_splices_path
  end
end
