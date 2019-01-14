require 'test_helper'

class SearchHistoryTest < ActionDispatch::IntegrationTest

	def setup
		@user = users(:rajat)
	end

	test "login search then view history" do
		get login_path
		post login_path, params: { session: { email: @user.email, password: 'password' } }
		assert is_logged_in?
		assert_redirected_to root_path
		follow_redirect!
		assert_template 'static_pages/home'
		get search_path, params: { search: 'muse' }
		assert_template 'static_pages/home'
		assert_select "h2", {text: 'Muse'}
 		get user_path(@user)
 		assert_template 'users/show'
 		assert_select "h3", "muse"
	end
end
