require 'test_helper'

class RegistrationsControllerTest < ActionController::TestCase
  setup do
    @registration = registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration" do
    assert_difference('Registration.count') do
      post :create, registration: { city: @registration.city, comment: @registration.comment, country: @registration.country, days: @registration.days, email: @registration.email, last_name: @registration.last_name, member: @registration.member, name: @registration.name, need_place: @registration.need_place, phone: @registration.phone }
    end

    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should show registration" do
    get :show, id: @registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registration
    assert_response :success
  end

  test "should update registration" do
    patch :update, id: @registration, registration: { city: @registration.city, comment: @registration.comment, country: @registration.country, days: @registration.days, email: @registration.email, last_name: @registration.last_name, member: @registration.member, name: @registration.name, need_place: @registration.need_place, phone: @registration.phone }
    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should destroy registration" do
    assert_difference('Registration.count', -1) do
      delete :destroy, id: @registration
    end

    assert_redirected_to registrations_path
  end
end
