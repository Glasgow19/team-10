require "application_system_test_case"

class ExhibtsTest < ApplicationSystemTestCase
  setup do
    @exhibt = exhibts(:one)
  end

  test "visiting the index" do
    visit exhibts_url
    assert_selector "h1", text: "Exhibts"
  end

  test "creating a Exhibt" do
    visit exhibts_url
    click_on "New Exhibt"

    fill_in "Name", with: @exhibt.name
    click_on "Create Exhibt"

    assert_text "Exhibt was successfully created"
    click_on "Back"
  end

  test "updating a Exhibt" do
    visit exhibts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @exhibt.name
    click_on "Update Exhibt"

    assert_text "Exhibt was successfully updated"
    click_on "Back"
  end

  test "destroying a Exhibt" do
    visit exhibts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exhibt was successfully destroyed"
  end
end
