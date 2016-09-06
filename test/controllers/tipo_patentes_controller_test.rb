require 'test_helper'

class TipoPatentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_patente = tipo_patentes(:one)
  end

  test "should get index" do
    get tipo_patentes_url, as: :json
    assert_response :success
  end

  test "should create tipo_patente" do
    assert_difference('TipoPatente.count') do
      post tipo_patentes_url, params: { tipo_patente: { nombre: @tipo_patente.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show tipo_patente" do
    get tipo_patente_url(@tipo_patente), as: :json
    assert_response :success
  end

  test "should update tipo_patente" do
    patch tipo_patente_url(@tipo_patente), params: { tipo_patente: { nombre: @tipo_patente.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy tipo_patente" do
    assert_difference('TipoPatente.count', -1) do
      delete tipo_patente_url(@tipo_patente), as: :json
    end

    assert_response 204
  end
end
