require 'test_helper'

class DashboardsControllerTest < ActionController::TestCase
  setup do
    user = create :user
    sign_in user
    @tasks = create_list :task, 15
  end

  test "should get show" do
    get :show
    assert_response :success
    assert true, assigns(:tasks).present?
  end

end
