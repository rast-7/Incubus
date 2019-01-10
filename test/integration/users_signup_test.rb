require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
  	get signup_path
  	assert_no_difference 'User.count' do
  		post users_path, params: { user: { name: "",
  										   email: "user@invalid",
  										   password: "foo",
  										   password_confirmation: "baz" } }
  	end
  	assert_template 'users/new'
  end

  test "valid signup information" do
  	get signup_path
  	assert_difference 'User.count' do
  		post users_path, params: { user: { name: "Example User",
  										   email: "user@invalid.com",
  										   password: "foobaz",
  										   password_confirmation: "foobaz" } }
  	end
  	follow_redirect!
  	assert_template 'users/show'
  end
end
