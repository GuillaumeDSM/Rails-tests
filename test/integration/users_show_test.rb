require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest

  test "show activated user" do
    activated_user = users(:michael)
    get user_path(activated_user)
    assert_template 'users/show'
  end

  test "do not show unactivated user" do
    unactivated_user = users(:gUnactivated)
    get user_path(unactivated_user)
    assert_redirected_to root_url
  end

end
