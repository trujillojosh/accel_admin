require 'test_helper'

class CorrectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @correction = corrections(:one)
  end

  test "should get index" do
    get corrections_url
    assert_response :success
  end

  test "should get new" do
    get new_correction_url
    assert_response :success
  end

  test "should create correction" do
    assert_difference('Correction.count') do
      post corrections_url, params: { correction: { b_kpi_a: @correction.b_kpi_a, blockers_a: @correction.blockers_a, corrector: @correction.corrector, date: @correction.date, demo: @correction.demo, help_a: @correction.help_a, other: @correction.other, pitch: @correction.pitch, t_kpi_a: @correction.t_kpi_a, team_id: @correction.team_id } }
    end

    assert_redirected_to correction_url(Correction.last)
  end

  test "should show correction" do
    get correction_url(@correction)
    assert_response :success
  end

  test "should get edit" do
    get edit_correction_url(@correction)
    assert_response :success
  end

  test "should update correction" do
    patch correction_url(@correction), params: { correction: { b_kpi_a: @correction.b_kpi_a, blockers_a: @correction.blockers_a, corrector: @correction.corrector, date: @correction.date, demo: @correction.demo, help_a: @correction.help_a, other: @correction.other, pitch: @correction.pitch, t_kpi_a: @correction.t_kpi_a, team_id: @correction.team_id } }
    assert_redirected_to correction_url(@correction)
  end

  test "should destroy correction" do
    assert_difference('Correction.count', -1) do
      delete correction_url(@correction)
    end

    assert_redirected_to corrections_url
  end
end
