require "application_system_test_case"

class UserolesTest < ApplicationSystemTestCase
  setup do
    @userole = useroles(:one)
  end

  test "visiting the index" do
    visit useroles_url
    assert_selector "h1", text: "Useroles"
  end

  test "should create userole" do
    visit useroles_url
    click_on "New userole"

    fill_in "Role", with: @userole.role
    fill_in "User", with: @userole.user
    click_on "Create Userole"

    assert_text "Userole was successfully created"
    click_on "Back"
  end

  test "should update Userole" do
    visit userole_url(@userole)
    click_on "Edit this userole", match: :first

    fill_in "Role", with: @userole.role
    fill_in "User", with: @userole.user
    click_on "Update Userole"

    assert_text "Userole was successfully updated"
    click_on "Back"
  end

  test "should destroy Userole" do
    visit userole_url(@userole)
    click_on "Destroy this userole", match: :first

    assert_text "Userole was successfully destroyed"
  end
end
