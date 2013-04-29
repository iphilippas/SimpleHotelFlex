require 'test_helper'

class RoomRatesControllerTest < ActionController::TestCase
  setup do
    @room_rate = room_rates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:room_rates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room_rate" do
    assert_difference('RoomRate.count') do
      post :create, room_rate: { days: @room_rate.days, duration: @room_rate.duration, rate: @room_rate.rate, room_type_id: @room_rate.room_type_id }
    end

    assert_redirected_to room_rate_path(assigns(:room_rate))
  end

  test "should show room_rate" do
    get :show, id: @room_rate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room_rate
    assert_response :success
  end

  test "should update room_rate" do
    put :update, id: @room_rate, room_rate: { days: @room_rate.days, duration: @room_rate.duration, rate: @room_rate.rate, room_type_id: @room_rate.room_type_id }
    assert_redirected_to room_rate_path(assigns(:room_rate))
  end

  test "should destroy room_rate" do
    assert_difference('RoomRate.count', -1) do
      delete :destroy, id: @room_rate
    end

    assert_redirected_to room_rates_path
  end
end
