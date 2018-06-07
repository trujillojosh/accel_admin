require 'test_helper'

class TeammakingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teammaking = teammakings(:one)
  end

  test "should get index" do
    get teammakings_url
    assert_response :success
  end

  test "should get new" do
    get new_teammaking_url
    assert_response :success
  end

  test "should create teammaking" do
    assert_difference('Teammaking.count') do
      post teammakings_url, params: { teammaking: { t1q1: @teammaking.t1q1, t1q2: @teammaking.t1q2, t1q3: @teammaking.t1q3, t1q4: @teammaking.t1q4, t2q1: @teammaking.t2q1, t2q2: @teammaking.t2q2, t2q3: @teammaking.t2q3, t2q4: @teammaking.t2q4, t2q5: @teammaking.t2q5, t2q6: @teammaking.t2q6, t3q1: @teammaking.t3q1, t3q2: @teammaking.t3q2, t3q3: @teammaking.t3q3, t3q4: @teammaking.t3q4, t3q5: @teammaking.t3q5, t5q1: @teammaking.t5q1, t5q2: @teammaking.t5q2, t6q1: @teammaking.t6q1, t6q2: @teammaking.t6q2, t6q3: @teammaking.t6q3, t6q4: @teammaking.t6q4, t6q5: @teammaking.t6q5, t6q6: @teammaking.t6q6 } }
    end

    assert_redirected_to teammaking_url(Teammaking.last)
  end

  test "should show teammaking" do
    get teammaking_url(@teammaking)
    assert_response :success
  end

  test "should get edit" do
    get edit_teammaking_url(@teammaking)
    assert_response :success
  end

  test "should update teammaking" do
    patch teammaking_url(@teammaking), params: { teammaking: { t1q1: @teammaking.t1q1, t1q2: @teammaking.t1q2, t1q3: @teammaking.t1q3, t1q4: @teammaking.t1q4, t2q1: @teammaking.t2q1, t2q2: @teammaking.t2q2, t2q3: @teammaking.t2q3, t2q4: @teammaking.t2q4, t2q5: @teammaking.t2q5, t2q6: @teammaking.t2q6, t3q1: @teammaking.t3q1, t3q2: @teammaking.t3q2, t3q3: @teammaking.t3q3, t3q4: @teammaking.t3q4, t3q5: @teammaking.t3q5, t5q1: @teammaking.t5q1, t5q2: @teammaking.t5q2, t6q1: @teammaking.t6q1, t6q2: @teammaking.t6q2, t6q3: @teammaking.t6q3, t6q4: @teammaking.t6q4, t6q5: @teammaking.t6q5, t6q6: @teammaking.t6q6 } }
    assert_redirected_to teammaking_url(@teammaking)
  end

  test "should destroy teammaking" do
    assert_difference('Teammaking.count', -1) do
      delete teammaking_url(@teammaking)
    end

    assert_redirected_to teammakings_url
  end
end
