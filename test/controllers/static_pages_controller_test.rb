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

  test "should get code" do
    get :code
    assert_response :success
#   assert_select "title", "Employer Introduction Site - Use The Right Tool for the Job"
  end


  test "should get fsd" do
    get :fsd
    assert_response :success
#   assert_select "title", "Employer Introduction Site - Full Stack Developer"
  end


  test "should get aws" do
    get :aws
    assert_response :success
    assert_select "title", "Employer Introduction Site - AWS"
  end


  # it should get the  resume
  test "should get resume" do
    get :resume
    assert_response :success
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
