require 'test_helper'

class HrestrictionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hrestriction = hrestrictions(:one)
  end

  test "should get index" do
    get hrestrictions_url, as: :json
    assert_response :success
  end

  test "should create hrestriction" do
    assert_difference('Hrestriction.count') do
      post hrestrictions_url, params: { hrestriction: { active: @hrestriction.active, name: @hrestriction.name } }, as: :json
    end

    assert_response 201
  end

  test "should show hrestriction" do
    get hrestriction_url(@hrestriction), as: :json
    assert_response :success
  end

  test "should update hrestriction" do
    patch hrestriction_url(@hrestriction), params: { hrestriction: { active: @hrestriction.active, name: @hrestriction.name } }, as: :json
    assert_response 200
  end

  test "should destroy hrestriction" do
    assert_difference('Hrestriction.count', -1) do
      delete hrestriction_url(@hrestriction), as: :json
    end

    assert_response 204
  end
end
