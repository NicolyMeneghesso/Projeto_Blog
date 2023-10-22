require "test_helper"

class PartnershipControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get partnership_index_url
    assert_response :success
  end
end
