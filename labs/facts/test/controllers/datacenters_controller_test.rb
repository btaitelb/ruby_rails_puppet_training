require 'test_helper'

class DatacentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datacenter = datacenters(:one)
  end

  test "should get index" do
    get datacenters_url
    assert_response :success
  end

  test "should get new" do
    get new_datacenter_url
    assert_response :success
  end

  test "should create datacenter" do
    assert_difference('Datacenter.count') do
      post datacenters_url, params: { datacenter: { name: @datacenter.name, region_id: @datacenter.region_id } }
    end

    assert_redirected_to datacenter_url(Datacenter.last)
  end

  test "should show datacenter" do
    get datacenter_url(@datacenter)
    assert_response :success
  end

  test "should get edit" do
    get edit_datacenter_url(@datacenter)
    assert_response :success
  end

  test "should update datacenter" do
    patch datacenter_url(@datacenter), params: { datacenter: { name: @datacenter.name, region_id: @datacenter.region_id } }
    assert_redirected_to datacenter_url(@datacenter)
  end

  test "should destroy datacenter" do
    assert_difference('Datacenter.count', -1) do
      delete datacenter_url(@datacenter)
    end

    assert_redirected_to datacenters_url
  end
end
