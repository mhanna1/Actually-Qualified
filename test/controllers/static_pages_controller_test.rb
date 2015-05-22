require File.join(File.dirname(__FILE__), '..', 'test_helper.rb')


def setup
  @user = users(:mark)
  @other_user = users(:archer)
end


class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Employer Introduction Site - Home"
  end


  test "should get mission" do
    get :mission
    assert_response :success
    assert_select "title", "Employer Introduction Site - Mission"
  end


  test "should get aws" do
    get :aws
    assert_response :success
    assert_select "title", "Employer Introduction Site - AWS"
  end

  # if not logged in it should fail
  test "should not get resume" do
    get :resume
    assert_response :redirect
#   assert_select "title", "Employer Introduction Site - Resume"
  end


  # if logged in it should have :success
 # test("should get resume") do
 #   log_in_as(@user , :id @user)
 #   get :resume , id: @user
 #   assert_response :success
 # end


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
