require 'test_helper'

class PaymentMethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment_method = payment_methods(:one)
  end

  test "should get index" do
    get payment_methods_url, as: :json
    assert_response :success
  end

  test "should create payment_method" do
    assert_difference('PaymentMethod.count') do
      post payment_methods_url, params: { payment_method: { cvv: @payment_method.cvv, data_month: @payment_method.data_month, date_year: @payment_method.date_year, name: @payment_method.name, number: @payment_method.number, routing: @payment_method.routing } }, as: :json
    end

    assert_response 201
  end

  test "should show payment_method" do
    get payment_method_url(@payment_method), as: :json
    assert_response :success
  end

  test "should update payment_method" do
    patch payment_method_url(@payment_method), params: { payment_method: { cvv: @payment_method.cvv, data_month: @payment_method.data_month, date_year: @payment_method.date_year, name: @payment_method.name, number: @payment_method.number, routing: @payment_method.routing } }, as: :json
    assert_response 200
  end

  test "should destroy payment_method" do
    assert_difference('PaymentMethod.count', -1) do
      delete payment_method_url(@payment_method), as: :json
    end

    assert_response 204
  end
end
