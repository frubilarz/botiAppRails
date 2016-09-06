require 'test_helper'

class MediosPagosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medios_pago = medios_pagos(:one)
  end

  test "should get index" do
    get medios_pagos_url, as: :json
    assert_response :success
  end

  test "should create medios_pago" do
    assert_difference('MediosPago.count') do
      post medios_pagos_url, params: { medios_pago: { nombre: @medios_pago.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show medios_pago" do
    get medios_pago_url(@medios_pago), as: :json
    assert_response :success
  end

  test "should update medios_pago" do
    patch medios_pago_url(@medios_pago), params: { medios_pago: { nombre: @medios_pago.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy medios_pago" do
    assert_difference('MediosPago.count', -1) do
      delete medios_pago_url(@medios_pago), as: :json
    end

    assert_response 204
  end
end
