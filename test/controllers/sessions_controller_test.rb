require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  setup do
    @user = create :user
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    @user.password = "test_password"
    @user.save
    attrs = {email: @user.email, password: @user.password}
    post :create, session: attrs
    assert_response :redirect
  end

  test "should get destroy" do
    sign_in @user
    delete :destroy
    assert_response :redirect
  end

end
