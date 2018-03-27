require 'test_helper'

class AllHandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @all_hand = all_hands(:one)
  end

  test "should get index" do
    get all_hands_url
    assert_response :success
  end

  test "should get new" do
    get new_all_hand_url
    assert_response :success
  end

  test "should create all_hand" do
    assert_difference('AllHand.count') do
      post all_hands_url, params: { all_hand: { b_kpi: @all_hand.b_kpi, blockers: @all_hand.blockers, date: @all_hand.date, help: @all_hand.help, other: @all_hand.other, t_kpi: @all_hand.t_kpi, team_id: @all_hand.team_id } }
    end

    assert_redirected_to all_hand_url(AllHand.last)
  end

  test "should show all_hand" do
    get all_hand_url(@all_hand)
    assert_response :success
  end

  test "should get edit" do
    get edit_all_hand_url(@all_hand)
    assert_response :success
  end

  test "should update all_hand" do
    patch all_hand_url(@all_hand), params: { all_hand: { b_kpi: @all_hand.b_kpi, blockers: @all_hand.blockers, date: @all_hand.date, help: @all_hand.help, other: @all_hand.other, t_kpi: @all_hand.t_kpi, team_id: @all_hand.team_id } }
    assert_redirected_to all_hand_url(@all_hand)
  end

  test "should destroy all_hand" do
    assert_difference('AllHand.count', -1) do
      delete all_hand_url(@all_hand)
    end

    assert_redirected_to all_hands_url
  end
end
