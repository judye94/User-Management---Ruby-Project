require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
   def setup
    @base_title = "Ruby on Rails App"
 end
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end 

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

   test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
  
  test "should get login" do
    get login_path
    assert_response :success
     assert_select "title", "Login | #{@base_title}"
  end
  
  test "should get profile" do
    get profile_path
    assert_response :success
     assert_select "title", "Profile | #{@base_title}"
  end
  
end