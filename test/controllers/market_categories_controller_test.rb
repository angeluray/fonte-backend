require "test_helper"

class MarketCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @market_category = market_categories(:one)
  end

  test "should get index" do
    get market_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_market_category_url
    assert_response :success
  end

  test "should create market_category" do
    assert_difference("MarketCategory.count") do
      post market_categories_url, params: { market_category: { name: @market_category.name } }
    end

    assert_redirected_to market_category_url(MarketCategory.last)
  end

  test "should show market_category" do
    get market_category_url(@market_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_market_category_url(@market_category)
    assert_response :success
  end

  test "should update market_category" do
    patch market_category_url(@market_category), params: { market_category: { name: @market_category.name } }
    assert_redirected_to market_category_url(@market_category)
  end

  test "should destroy market_category" do
    assert_difference("MarketCategory.count", -1) do
      delete market_category_url(@market_category)
    end

    assert_redirected_to market_categories_url
  end
end
