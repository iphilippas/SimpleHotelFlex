require 'test_helper'

class RoomCostsControllerTest < ActionController::TestCase
  setup do
    @room_cost = room_costs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:room_costs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room_cost" do
    assert_difference('RoomCost.count') do
      post :create, room_cost: { cost: @room_cost.cost, day: @room_cost.day, reservation_id: @room_cost.reservation_id, room_id: @room_cost.room_id }
    end

    assert_redirected_to room_cost_path(assigns(:room_cost))
  end

  test "should show room_cost" do
    get :show, id: @room_cost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room_cost
    assert_response :success
  end

  test "should update room_cost" do
    put :update, id: @room_cost, room_cost: { cost: @room_cost.cost, day: @room_cost.day, reservation_id: @room_cost.reservation_id, room_id: @room_cost.room_id }
    assert_redirected_to room_cost_path(assigns(:room_cost))
  end

  test "should destroy room_cost" do
    assert_difference('RoomCost.count', -1) do
      delete :destroy, id: @room_cost
    end

    assert_redirected_to room_costs_path
  end
end
