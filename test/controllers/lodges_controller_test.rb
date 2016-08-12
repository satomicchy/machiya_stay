require 'test_helper'

class LodgesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lodge = lodges(:one)
  end

  test "should get index" do
    get lodges_url
    assert_response :success
  end

  test "should get new" do
    get new_lodge_url
    assert_response :success
  end

  test "should create lodge" do
    assert_difference('Lodge.count') do
      post lodges_url, params: { lodge: { address: @lodge.address, available: @lodge.available, description: @lodge.description, name: @lodge.name, picture: @lodge.picture, tel: @lodge.tel, url: @lodge.url } }
    end

    assert_redirected_to lodge_url(Lodge.last)
  end

  test "should show lodge" do
    get lodge_url(@lodge)
    assert_response :success
  end

  test "should get edit" do
    get edit_lodge_url(@lodge)
    assert_response :success
  end

  test "should update lodge" do
    patch lodge_url(@lodge), params: { lodge: { address: @lodge.address, available: @lodge.available, description: @lodge.description, name: @lodge.name, picture: @lodge.picture, tel: @lodge.tel, url: @lodge.url } }
    assert_redirected_to lodge_url(@lodge)
  end

  test "should destroy lodge" do
    assert_difference('Lodge.count', -1) do
      delete lodge_url(@lodge)
    end

    assert_redirected_to lodges_url
  end
end
