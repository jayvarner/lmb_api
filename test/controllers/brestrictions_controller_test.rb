require 'test_helper'

class BrestrictionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brestriction = brestrictions(:one)
  end

  test "should get index" do
    get brestrictions_url, as: :json
    assert_response :success
  end

  test "should create brestriction" do
    assert_difference('Brestriction.count') do
      post brestrictions_url, params: { brestriction: { active: @brestriction.active, name: @brestriction.name } }, as: :json
    end

    assert_response 201
  end

  test "should show brestriction" do
    get brestriction_url(@brestriction), as: :json
    assert_response :success
  end

  test "should update brestriction" do
    patch brestriction_url(@brestriction), params: { brestriction: { active: @brestriction.active, name: @brestriction.name } }, as: :json
    assert_response 200
  end

  test "should destroy brestriction" do
    assert_difference('Brestriction.count', -1) do
      delete brestriction_url(@brestriction), as: :json
    end

    assert_response 204
  end
end
