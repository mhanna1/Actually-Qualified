require File.join(File.dirname(__FILE__), '..', 'test_helper.rb')

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
