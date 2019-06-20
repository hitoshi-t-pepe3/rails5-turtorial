require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup infomation" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: "",
                                         email: "user@invalid",
                                         password:              "foo",
                                         password_confirmation: "bar" } }
      assert_template 'users/new'
      assert_select 'div#<css id for error explanation>'
      assert_select 'div.<css id for error explanation>'
    end

  end
end
