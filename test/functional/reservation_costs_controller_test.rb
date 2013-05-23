require 'test_helper'

class ReservationCostsControllerTest < ActionController::TestCase
  setup do
    @reservation_cost = reservation_costs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservation_costs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reservation_cost" do
    assert_difference('ReservationCost.count') do
      post :create, reservation_cost: { day: @reservation_cost.day, rate: @reservation_cost.rate, reservation_id: @reservation_cost.reservation_id }
    end

    assert_redirected_to reservation_cost_path(assigns(:reservation_cost))
  end

  test "should show reservation_cost" do
    get :show, id: @reservation_cost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reservation_cost
    assert_response :success
  end

  test "should update reservation_cost" do
    put :update, id: @reservation_cost, reservation_cost: { day: @reservation_cost.day, rate: @reservation_cost.rate, reservation_id: @reservation_cost.reservation_id }
    assert_redirected_to reservation_cost_path(assigns(:reservation_cost))
  end

  test "should destroy reservation_cost" do
    assert_difference('ReservationCost.count', -1) do
      delete :destroy, id: @reservation_cost
    end

    assert_redirected_to reservation_costs_path
  end
end
