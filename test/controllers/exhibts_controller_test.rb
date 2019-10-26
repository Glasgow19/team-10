require 'test_helper'

class ExhibtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exhibt = exhibts(:one)
  end

  test "should get index" do
    get exhibts_url
    assert_response :success
  end

  test "should get new" do
    get new_exhibt_url
    assert_response :success
  end

  test "should create exhibt" do
    assert_difference('Exhibt.count') do
      post exhibts_url, params: { exhibt: { name: @exhibt.name } }
    end

    assert_redirected_to exhibt_url(Exhibt.last)
  end

  test "should show exhibt" do
    get exhibt_url(@exhibt)
    assert_response :success
  end

  test "should get edit" do
    get edit_exhibt_url(@exhibt)
    assert_response :success
  end

  test "should update exhibt" do
    patch exhibt_url(@exhibt), params: { exhibt: { name: @exhibt.name } }
    assert_redirected_to exhibt_url(@exhibt)
  end

  test "should destroy exhibt" do
    assert_difference('Exhibt.count', -1) do
      delete exhibt_url(@exhibt)
    end

    assert_redirected_to exhibts_url
  end
end
