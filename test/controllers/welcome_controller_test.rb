require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  setup do
    user = create :user
    sign_in user
    @tasks = create_list :task, 15
  end

  test "should get index" do
    get :index
    assert_response :success
    assert true, assigns(:tasks).present?
  end

end
