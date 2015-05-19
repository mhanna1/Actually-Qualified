require File.join(File.dirname(__FILE__), '..', 'test_helper.rb')


class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Employer Introduction Site - Home"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Employer Introduction Site - Help"
  end

  test "should get resume" do
    get :resume
    assert_response :success
#   assert_select "title", "Employer Introduction Site - Resume"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "Employer Introduction Site - About"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Employer Introduction Site - Contact"
  end

end
