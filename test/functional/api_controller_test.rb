require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get categories" do
    get :categories
    assert_response :success
  end

  test "should get trailers" do
    get :trailers
    assert_response :success
  end

  test "should get users" do
    get :users
    assert_response :success
  end

end
