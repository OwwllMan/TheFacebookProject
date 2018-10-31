require 'test_helper'

class StatiqueControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get statique_home_url
    assert_response :success
  end

end
