require 'test_helper'

class PizzaclusterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pizzacluster_index_url
    assert_response :success
  end

end
