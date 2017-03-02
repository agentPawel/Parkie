require 'test_helper'

class ParkActivityControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get park_activity_show_url
    assert_response :success
  end

end
