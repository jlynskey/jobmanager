require 'test_helper'

class JobdashboardsControllerTest < ActionController::TestCase
  setup do
    @jobdashboard = jobdashboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobdashboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobdashboard" do
    assert_difference('Jobdashboard.count') do
      post :create, jobdashboard: { job_comment: @jobdashboard.job_comment, job_id: @jobdashboard.job_id }
    end

    assert_redirected_to jobdashboard_path(assigns(:jobdashboard))
  end

  test "should show jobdashboard" do
    get :show, id: @jobdashboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobdashboard
    assert_response :success
  end

  test "should update jobdashboard" do
    patch :update, id: @jobdashboard, jobdashboard: { job_comment: @jobdashboard.job_comment, job_id: @jobdashboard.job_id }
    assert_redirected_to jobdashboard_path(assigns(:jobdashboard))
  end

  test "should destroy jobdashboard" do
    assert_difference('Jobdashboard.count', -1) do
      delete :destroy, id: @jobdashboard
    end

    assert_redirected_to jobdashboards_path
  end
end
