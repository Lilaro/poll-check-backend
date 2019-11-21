require 'test_helper'

class PollSitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poll_site = poll_sites(:one)
  end

  test "should get index" do
    get poll_sites_url, as: :json
    assert_response :success
  end

  test "should create poll_site" do
    assert_difference('PollSite.count') do
      post poll_sites_url, params: { poll_site: { latitude: @poll_site.latitude, longitude: @poll_site.longitude, name: @poll_site.name, site_number: @poll_site.site_number } }, as: :json
    end

    assert_response 201
  end

  test "should show poll_site" do
    get poll_site_url(@poll_site), as: :json
    assert_response :success
  end

  test "should update poll_site" do
    patch poll_site_url(@poll_site), params: { poll_site: { latitude: @poll_site.latitude, longitude: @poll_site.longitude, name: @poll_site.name, site_number: @poll_site.site_number } }, as: :json
    assert_response 200
  end

  test "should destroy poll_site" do
    assert_difference('PollSite.count', -1) do
      delete poll_site_url(@poll_site), as: :json
    end

    assert_response 204
  end
end
