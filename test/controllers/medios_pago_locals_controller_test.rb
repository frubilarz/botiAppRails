require 'test_helper'

class MediosPagoLocalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medios_pago_local = medios_pago_locals(:one)
  end

  test "should get index" do
    get medios_pago_locals_url, as: :json
    assert_response :success
  end

  test "should create medios_pago_local" do
    assert_difference('MediosPagoLocal.count') do
      post medios_pago_locals_url, params: { medios_pago_local: { local_id: @medios_pago_local.local_id, medios_pago_id: @medios_pago_local.medios_pago_id } }, as: :json
    end

    assert_response 201
  end

  test "should show medios_pago_local" do
    get medios_pago_local_url(@medios_pago_local), as: :json
    assert_response :success
  end

  test "should update medios_pago_local" do
    patch medios_pago_local_url(@medios_pago_local), params: { medios_pago_local: { local_id: @medios_pago_local.local_id, medios_pago_id: @medios_pago_local.medios_pago_id } }, as: :json
    assert_response 200
  end

  test "should destroy medios_pago_local" do
    assert_difference('MediosPagoLocal.count', -1) do
      delete medios_pago_local_url(@medios_pago_local), as: :json
    end

    assert_response 204
  end
end
