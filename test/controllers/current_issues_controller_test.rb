require 'test_helper'

class CurrentIssuesControllerTest < ActionController::TestCase
  setup do
    @current_issue = current_issues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:current_issues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create current_issue" do
    assert_difference('CurrentIssue.count') do
      post :create, current_issue: { number: @current_issue.number }
    end

    assert_redirected_to current_issue_path(assigns(:current_issue))
  end

  test "should show current_issue" do
    get :show, id: @current_issue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @current_issue
    assert_response :success
  end

  test "should update current_issue" do
    patch :update, id: @current_issue, current_issue: { number: @current_issue.number }
    assert_redirected_to current_issue_path(assigns(:current_issue))
  end

  test "should destroy current_issue" do
    assert_difference('CurrentIssue.count', -1) do
      delete :destroy, id: @current_issue
    end

    assert_redirected_to current_issues_path
  end
end
