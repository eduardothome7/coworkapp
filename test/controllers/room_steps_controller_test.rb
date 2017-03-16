require 'test_helper'

class RoomStepsControllerTest < ActionDispatch::IntegrationTest
  test "should get location" do
    get room_infos_location_url
    assert_response :success
  end

  test "should get contact" do
    get room_infos_contact_url
    assert_response :success
  end

  test "should get photos" do
    get room_infos_photos_url
    assert_response :success
  end

end
