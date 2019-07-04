require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest
  test "not activated user show" do
    notactive_user = users(:notactive)
    get user_path(notactive_user)
    assert_redirected_to root_url
  end

  test "activated user show" do
    active_user = users(:michael)
    get user_path(active_user)
    assert_template 'users/show'
  end
end
