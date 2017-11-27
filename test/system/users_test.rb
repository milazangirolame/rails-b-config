require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase

  test "Redirect Admin to Dashboard" do

  login_as users(:mila)

  end

  test "Admin CRUD" do
  login_as users(:mila)
  visit "/dashboard/user/new"

  fill_in "first_name", with: "Roberto"
  fill_in "last_name", with: "Carlos"
  fill_in "office" , with: "Singer"
  fill_in "role" , with: "no-admin"
  click_on 'New user'
  # Should be redirected to Dashboard with new user
  assert_equal new_user_path, page.current_path

  end
end
