require 'test_helper'

class ThanksControllerTest < ActionDispatch::IntegrationTest
  test "should get thanks" do
    get thanks_thanks_url
    assert_response :success
  end

end
