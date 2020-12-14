require "application_system_test_case"

class MalingsTest < ApplicationSystemTestCase
  setup do
    @maling = malings(:one)
  end

  test "visiting the index" do
    visit malings_url
    assert_selector "h1", text: "Malings"
  end

  test "creating a Maling" do
    visit malings_url
    click_on "New Maling"

    fill_in "Message", with: @maling.message
    fill_in "Title", with: @maling.title
    click_on "Create Maling"

    assert_text "Maling was successfully created"
    click_on "Back"
  end

  test "updating a Maling" do
    visit malings_url
    click_on "Edit", match: :first

    fill_in "Message", with: @maling.message
    fill_in "Title", with: @maling.title
    click_on "Update Maling"

    assert_text "Maling was successfully updated"
    click_on "Back"
  end

  test "destroying a Maling" do
    visit malings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Maling was successfully destroyed"
  end
end
