require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    user = create :user
    sign_in user
    @task = create :task, user: user
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get :show, id: @task.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task.id
    assert_response :success
  end

  test "should get create" do
    attrs = attributes_for :task
    post :create, task: attrs
    assert_response :redirect
  end

  test "should get update" do
    attrs = attributes_for :task
    put :update, id: @task.id, task: attrs
    assert_response :redirect
  end

  test "should get destroy" do
    delete :destroy, id: @task.id
    assert_response :redirect
  end

end
