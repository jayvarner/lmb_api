require 'test_helper'

class RestrictionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restriction = restrictions(:one)
  end

  test "should get index" do
    get restrictions_url, as: :json
    assert_response :success
  end

  test "should create restriction" do
    assert_difference('Restriction.count') do
      post restrictions_url, params: { restriction: { name: @restriction.name } }, as: :json
    end

    assert_response 201
  end

  test "should show restriction" do
    get restriction_url(@restriction), as: :json
    assert_response :success
  end

  test "should update restriction" do
    patch restriction_url(@restriction), params: { restriction: { name: @restriction.name } }, as: :json
    assert_response 200
  end

  test "should destroy restriction" do
    assert_difference('Restriction.count', -1) do
      delete restriction_url(@restriction), as: :json
    end

    assert_response 204
  end
end
