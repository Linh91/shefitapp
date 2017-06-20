require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @name = "sheFit"
  end

  test "should get root" do
    get root_path
    assert_response :success
  end

  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "#{@name}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "#{@name} | Help"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "#{@name} | About"
  end

end

# first two test are verifying URL
# assert_selector test for the presence of a particular HTML tag
