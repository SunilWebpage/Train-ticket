require "test_helper"

class TraindetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get traindetails_new_url
    assert_response :success
  end

  test "should get edit" do
    get traindetails_edit_url
    assert_response :success
  end

  test "should get delete" do
    get traindetails_delete_url
    assert_response :success
  end
end
