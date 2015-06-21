require File.join(File.dirname(__FILE__), '..', 'test_helper.rb')


class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do

    get root_path
    assert_template 'static_pages/home'
    assert_select "a", :href => root_path
    assert_select "a", :href => mission_path
    assert_select "a", :href => contact_path
    assert_select "a", :href => aws_path
    assert_select "a", :href => signup_path
    assert_select "a", :href => languages_path

    assert_select "a", :href => simular_path
    assert_select "a", :href => fsd_path
    assert_select "a", :href => resume_path
    assert_select "a", :href => about_path

    get signup_path
    assert_select "title", "Sign up"

  end

end
