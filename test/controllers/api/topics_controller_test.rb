require 'test_helper'

class Api::TopicsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_topics_create_url
    assert_response :success
  end

end
