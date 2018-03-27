require 'test_helper'

class BulkAttendancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bulk_attendance = bulk_attendances(:one)
  end

  test "should get index" do
    get bulk_attendances_url
    assert_response :success
  end

  test "should get new" do
    get new_bulk_attendance_url
    assert_response :success
  end

  test "should create bulk_attendance" do
    assert_difference('BulkAttendance.count') do
      post bulk_attendances_url, params: { bulk_attendance: { attendees: @bulk_attendance.attendees, date: @bulk_attendance.date, desc: @bulk_attendance.desc, title: @bulk_attendance.title } }
    end

    assert_redirected_to bulk_attendance_url(BulkAttendance.last)
  end

  test "should show bulk_attendance" do
    get bulk_attendance_url(@bulk_attendance)
    assert_response :success
  end

  test "should get edit" do
    get edit_bulk_attendance_url(@bulk_attendance)
    assert_response :success
  end

  test "should update bulk_attendance" do
    patch bulk_attendance_url(@bulk_attendance), params: { bulk_attendance: { attendees: @bulk_attendance.attendees, date: @bulk_attendance.date, desc: @bulk_attendance.desc, title: @bulk_attendance.title } }
    assert_redirected_to bulk_attendance_url(@bulk_attendance)
  end

  test "should destroy bulk_attendance" do
    assert_difference('BulkAttendance.count', -1) do
      delete bulk_attendance_url(@bulk_attendance)
    end

    assert_redirected_to bulk_attendances_url
  end
end
