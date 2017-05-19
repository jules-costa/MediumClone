require 'test_helper'

class Api::ImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_images_index_url
    assert_response :success
  end

  test "should get create" do
    get api_images_create_url
    assert_response :success
  end

end
