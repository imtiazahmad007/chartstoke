require 'test_helper'

class FileProcessorControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get process" do
    get :process
    assert_response :success
  end

  test "should get upload" do
    get :upload
    assert_response :success
  end

end
