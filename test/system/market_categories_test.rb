require "application_system_test_case"

class MarketCategoriesTest < ApplicationSystemTestCase
  setup do
    @market_category = market_categories(:one)
  end

  test "visiting the index" do
    visit market_categories_url
    assert_selector "h1", text: "Market categories"
  end

  test "should create market category" do
    visit market_categories_url
    click_on "New market category"

    fill_in "Name", with: @market_category.name
    click_on "Create Market category"

    assert_text "Market category was successfully created"
    click_on "Back"
  end

  test "should update Market category" do
    visit market_category_url(@market_category)
    click_on "Edit this market category", match: :first

    fill_in "Name", with: @market_category.name
    click_on "Update Market category"

    assert_text "Market category was successfully updated"
    click_on "Back"
  end

  test "should destroy Market category" do
    visit market_category_url(@market_category)
    click_on "Destroy this market category", match: :first

    assert_text "Market category was successfully destroyed"
  end
end
