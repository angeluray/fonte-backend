require "application_system_test_case"

class FontesTest < ApplicationSystemTestCase
  setup do
    @fonte = fontes(:one)
  end

  test "visiting the index" do
    visit fontes_url
    assert_selector "h1", text: "Fontes"
  end

  test "should create fonte" do
    visit fontes_url
    click_on "New fonte"

    fill_in "Description", with: @fonte.description
    fill_in "Name", with: @fonte.name
    fill_in "Rating", with: @fonte.rating
    click_on "Create Fonte"

    assert_text "Fonte was successfully created"
    click_on "Back"
  end

  test "should update Fonte" do
    visit fonte_url(@fonte)
    click_on "Edit this fonte", match: :first

    fill_in "Description", with: @fonte.description
    fill_in "Name", with: @fonte.name
    fill_in "Rating", with: @fonte.rating
    click_on "Update Fonte"

    assert_text "Fonte was successfully updated"
    click_on "Back"
  end

  test "should destroy Fonte" do
    visit fonte_url(@fonte)
    click_on "Destroy this fonte", match: :first

    assert_text "Fonte was successfully destroyed"
  end
end
