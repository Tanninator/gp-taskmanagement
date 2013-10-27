require 'test_helper'

class TaskSessionsControllerTest < ActionController::TestCase
  setup do
    @task_session = task_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_session" do
    assert_difference('TaskSession.count') do
      post :create, task_session: { admin: @task_session.admin, progress: @task_session.progress, title: @task_session.title }
    end

    assert_redirected_to task_session_path(assigns(:task_session))
  end

  test "should show task_session" do
    get :show, id: @task_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task_session
    assert_response :success
  end

  test "should update task_session" do
    patch :update, id: @task_session, task_session: { admin: @task_session.admin, progress: @task_session.progress, title: @task_session.title }
    assert_redirected_to task_session_path(assigns(:task_session))
  end

  test "should destroy task_session" do
    assert_difference('TaskSession.count', -1) do
      delete :destroy, id: @task_session
    end

    assert_redirected_to task_sessions_path
  end
end
