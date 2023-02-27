require "test_helper"

class FontesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fonte = fontes(:one)
  end

  test "should get index" do
    get fontes_url
    assert_response :success
  end

  test "should get new" do
    get new_fonte_url
    assert_response :success
  end

  test "should create fonte" do
    assert_difference("Fonte.count") do
      post fontes_url, params: { fonte: { description: @fonte.description, name: @fonte.name, rating: @fonte.rating } }
    end

    assert_redirected_to fonte_url(Fonte.last)
  end

  test "should show fonte" do
    get fonte_url(@fonte)
    assert_response :success
  end

  test "should get edit" do
    get edit_fonte_url(@fonte)
    assert_response :success
  end

  test "should update fonte" do
    patch fonte_url(@fonte), params: { fonte: { description: @fonte.description, name: @fonte.name, rating: @fonte.rating } }
    assert_redirected_to fonte_url(@fonte)
  end

  test "should destroy fonte" do
    assert_difference("Fonte.count", -1) do
      delete fonte_url(@fonte)
    end

    assert_redirected_to fontes_url
  end
end
