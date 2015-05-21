require File.join(File.dirname(__FILE__), '..', 'test_helper.rb')


class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", mission_path
#   assert_select "a[href=?]", resume_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
#   get signup_path
#   assert_select "title", full_title("Sign up")
    assert_select "a[href=?]", signup_path
  end
  # test "the truth" do
  #   assert true
  # end
end
