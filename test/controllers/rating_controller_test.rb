require 'test_helper'

class RatingControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get rating_update_url
    assert_response :success
  end

end
