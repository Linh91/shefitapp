require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @name = "sheFit"
  end

  test "should get root" do
    get '/'
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "#{@name} | Home"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "sheFit | Help"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "sheFit | About"
  end

end

# first two test are verifying URL
# assert_selector test for the presence of a particular HTML tag
