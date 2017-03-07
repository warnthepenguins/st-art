require 'test_helper'

class StreetArtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @street_art = street_arts(:one)
  end

  test "should get index" do
    get street_arts_url
    assert_response :success
  end

  test "should get new" do
    get new_street_art_url
    assert_response :success
  end

  test "should create street_art" do
    assert_difference('StreetArt.count') do
      post street_arts_url, params: { street_art: { artist: @street_art.artist, title: @street_art.title } }
    end

    assert_redirected_to street_art_url(StreetArt.last)
  end

  test "should show street_art" do
    get street_art_url(@street_art)
    assert_response :success
  end

  test "should get edit" do
    get edit_street_art_url(@street_art)
    assert_response :success
  end

  test "should update street_art" do
    patch street_art_url(@street_art), params: { street_art: { artist: @street_art.artist, title: @street_art.title } }
    assert_redirected_to street_art_url(@street_art)
  end

  test "should destroy street_art" do
    assert_difference('StreetArt.count', -1) do
      delete street_art_url(@street_art)
    end

    assert_redirected_to street_arts_url
  end
end
