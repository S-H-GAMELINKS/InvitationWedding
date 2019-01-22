require "application_system_test_case"

class AttendancesTest < ApplicationSystemTestCase
  setup do
    @attendance = attendances(:one)
  end

  test "visiting the index" do
    visit attendances_url
    assert_selector "h1", text: "Attendances"
  end

  test "creating a Attendance" do
    visit attendances_url
    click_on "New Attendance"

    fill_in "Attend", with: @attendance.attend
    fill_in "Email", with: @attendance.email
    fill_in "Name", with: @attendance.name
    fill_in "Other", with: @attendance.other
    fill_in "Tel", with: @attendance.tel
    click_on "Create Attendance"

    assert_text "Attendance was successfully created"
    click_on "Back"
  end

  test "updating a Attendance" do
    visit attendances_url
    click_on "Edit", match: :first

    fill_in "Attend", with: @attendance.attend
    fill_in "Email", with: @attendance.email
    fill_in "Name", with: @attendance.name
    fill_in "Other", with: @attendance.other
    fill_in "Tel", with: @attendance.tel
    click_on "Update Attendance"

    assert_text "Attendance was successfully updated"
    click_on "Back"
  end

  test "destroying a Attendance" do
    visit attendances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attendance was successfully destroyed"
  end
end
