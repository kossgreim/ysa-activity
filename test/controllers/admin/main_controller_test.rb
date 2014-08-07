require 'test_helper'

class Admin::MainControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get report" do
    get :report
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

end
