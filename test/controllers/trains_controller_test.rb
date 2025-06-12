require "test_helper"

class TrainsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get trains_new_url
    assert_response :success
  end

  test "should get edit" do
    get trains_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get trains_destroy_url
    assert_response :success
  end
end
