require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get meet" do
    get :meet
    assert_response :success
  end

  test "should get lessons" do
    get :lessons
    assert_response :success
  end

  test "should get tips" do
    get :tips
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
