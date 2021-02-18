require 'test_helper'

class RepliesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get replies_new_url
    assert_response :success
  end

  test "should get create" do
    get replies_create_url
    assert_response :success
  end

  test "should get show" do
    get replies_show_url
    assert_response :success
  end

end
