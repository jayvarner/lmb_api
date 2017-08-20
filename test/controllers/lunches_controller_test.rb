require 'test_helper'

class LunchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lunch = lunches(:one)
  end

  test "should get index" do
    get lunches_url, as: :json
    assert_response :success
  end

  test "should create lunch" do
    assert_difference('Lunch.count') do
      post lunches_url, params: { lunch: { name: @lunch.name } }, as: :json
    end

    assert_response 201
  end

  test "should show lunch" do
    get lunch_url(@lunch), as: :json
    assert_response :success
  end

  test "should update lunch" do
    patch lunch_url(@lunch), params: { lunch: { name: @lunch.name } }, as: :json
    assert_response 200
  end

  test "should destroy lunch" do
    assert_difference('Lunch.count', -1) do
      delete lunch_url(@lunch), as: :json
    end

    assert_response 204
  end
end
