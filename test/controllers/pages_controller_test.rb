require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get core_values" do
    get pages_core_values_url
    assert_response :success
  end

  test "should get culture" do
    get pages_culture_url
    assert_response :success
  end

  test "should get vision" do
    get pages_vision_url
    assert_response :success
  end

  test "should get mission" do
    get pages_mission_url
    assert_response :success
  end

  test "should get Who_we_are" do
    get pages_Who_we_are_url
    assert_response :success
  end

  test "should get description" do
    get pages_description_url
    assert_response :success
  end
end
