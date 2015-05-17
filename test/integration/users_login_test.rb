require File.join(File.dirname(__FILE__), '..', 'test_helper.rb')

class UsersLoginTest < ActionDispatch::IntegrationTest


# Test user defined in test/fixtures/users.yml
  def setup
    @user = users(:michael)
  end


  test "login with invalid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, session: { email: "", password: "" }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
  
# The basic steps appear as follows:
#   test "" do
# Visit the login path.
#    get login_path
# Verify that the new sessions form renders properly.
#    assert_template 'sessions/new'
# Verify that the flash message doesn’t appear on the new page.
#    post login_path, session: { email: "", password: "" }
# Post to the sessions path with an invalid params hash.
#    assert_template 'sessions/new'
# Verify that the new sessions form gets re-rendered and that a flash message appears.
#    assert_not flash.empty?
# Visit another page (such as the Home page).
#    get root_path
# Verify that the flash message doesn’t appear on the new page.
#    assert flash.empty?
#  end


  test "login with valid information" do
    get login_path
    post login_path, session: { email: @user.email, password: 'password' }
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", user_path(@user)
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
    # Simulate a user clicking logout in a second window.
    delete logout_path
    follow_redirect!
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", logout_path,      count: 0
    assert_select "a[href=?]", user_path(@user), count: 0
  end

  test "login with remembering" do
    log_in_as(@user, remember_me: '1')
    assert_not_nil cookies['remember_token']
  end

  test "login without remembering" do
    log_in_as(@user, remember_me: '0')
    assert_nil cookies['remember_token']
  end

end
