require "test_helper"

class EndpointControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get endpoint_index_url
    assert_response :success
  end

  test "should get show" do
    get endpoint_show_url
    assert_response :success
  end

  test "should get delete" do
    get endpoint_delete_url
    assert_response :success
  end
end
