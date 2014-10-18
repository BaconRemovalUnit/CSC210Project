require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get welcome" do
    get :welcome
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get setting" do
    get :setting
    assert_response :success
  end

end
