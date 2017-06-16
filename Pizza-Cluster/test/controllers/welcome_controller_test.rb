require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get ac1" do
    get welcome_ac1_url
    assert_response :success
  end

end
