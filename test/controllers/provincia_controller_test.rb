require 'test_helper'

class ProvinciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @provincium = provincia(:one)
  end

  test "should get index" do
    get provincia_index_url, as: :json
    assert_response :success
  end

  test "should create provincium" do
    assert_difference('Provincia.count') do
      post provincia_index_url, params: { provincium: { nombre: @provincium.nombre, region_id: @provincium.region_id } }, as: :json
    end

    assert_response 201
  end

  test "should show provincium" do
    get provincium_url(@provincium), as: :json
    assert_response :success
  end

  test "should update provincium" do
    patch provincium_url(@provincium), params: { provincium: { nombre: @provincium.nombre, region_id: @provincium.region_id } }, as: :json
    assert_response 200
  end

  test "should destroy provincium" do
    assert_difference('Provincia.count', -1) do
      delete provincium_url(@provincium), as: :json
    end

    assert_response 204
  end
end
