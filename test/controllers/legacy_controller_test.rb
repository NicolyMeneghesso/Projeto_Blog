require "test_helper"

class LegacyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get legacy_index_url
    assert_response :success
  end
end
