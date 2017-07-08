require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get show" do
    user = User.first
    get user_url(user)
    assert_response :success
  end

end
