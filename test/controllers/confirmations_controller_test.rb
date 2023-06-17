require "test_helper"

class ConfirmationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get confirmations_index_url
    assert_response :success
  end

  test "should get show" do
    get confirmations_show_url
    assert_response :success
  end
end
