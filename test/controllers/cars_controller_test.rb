require 'test_helper'

class CarsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get status" do
    get :status
    assert_response :success
  end

  test "should get accelerate" do
    get :accelerate
    assert_response :success
  end

  test "should get brake" do
    get :brake
    assert_response :success
  end

  test "should get lights" do
    get :lights
    assert_response :success
  end

  test "should get toggle" do
    get :toggle
    assert_response :success
  end

  test "should get park" do
    get :park
    assert_response :success
  end

  test "should get color" do
    get :color
    assert_response :success
  end

end
