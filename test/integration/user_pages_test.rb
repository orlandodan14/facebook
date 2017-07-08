require 'test_helper'

class UserPagesTest < ActionDispatch::IntegrationTest
    
  test "should get new user page" do
    get new_user_registration_url
    assert :success
    assert_template 'devise/registrations/new'
    assert_select "a", "Sign in"
  end
  
  test "should get new session" do
    get new_user_session_url
    assert :success
    assert_template 'devise/sessions/new'
    assert_select "a", "Sign up"
  end
end
