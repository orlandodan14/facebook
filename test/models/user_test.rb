require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(email: "user@example.com")
  end

  test "should be valid" do
    assert_not @user.valid?
  end
end
