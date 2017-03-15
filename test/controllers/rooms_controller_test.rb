require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_room_url
    assert_response :success
  end

  test "should create room" do
    assert_difference('Room.count') do
      post rooms_url, params: { room: { address: @room.address, celphone: @room.celphone, cep: @room.cep, city: @room.city, close_at: @room.close_at, country: @room.country, description: @room.description, email: @room.email, facebook_profile: @room.facebook_profile, instagram_profile: @room.instagram_profile, n: @room.n, name: @room.name, ngb: @room.ngb, open_at: @room.open_at, picture: @room.picture, telephone: @room.telephone } }
    end

    assert_redirected_to room_url(Room.last)
  end

  test "should show room" do
    get room_url(@room)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_url(@room)
    assert_response :success
  end

  test "should update room" do
    patch room_url(@room), params: { room: { address: @room.address, celphone: @room.celphone, cep: @room.cep, city: @room.city, close_at: @room.close_at, country: @room.country, description: @room.description, email: @room.email, facebook_profile: @room.facebook_profile, instagram_profile: @room.instagram_profile, n: @room.n, name: @room.name, ngb: @room.ngb, open_at: @room.open_at, picture: @room.picture, telephone: @room.telephone } }
    assert_redirected_to room_url(@room)
  end

  test "should destroy room" do
    assert_difference('Room.count', -1) do
      delete room_url(@room)
    end

    assert_redirected_to rooms_url
  end
end
