require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get info" do
    get :info
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get registration" do
    get :registration
    assert_response :success
  end

end
