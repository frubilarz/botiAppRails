require 'test_helper'

class ComunasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comuna = comunas(:one)
  end

  test "should get index" do
    get comunas_url, as: :json
    assert_response :success
  end

  test "should create comuna" do
    assert_difference('Comuna.count') do
      post comunas_url, params: { comuna: { nombre: @comuna.nombre, provincia_id: @comuna.provincia_id } }, as: :json
    end

    assert_response 201
  end

  test "should show comuna" do
    get comuna_url(@comuna), as: :json
    assert_response :success
  end

  test "should update comuna" do
    patch comuna_url(@comuna), params: { comuna: { nombre: @comuna.nombre, provincia_id: @comuna.provincia_id } }, as: :json
    assert_response 200
  end

  test "should destroy comuna" do
    assert_difference('Comuna.count', -1) do
      delete comuna_url(@comuna), as: :json
    end

    assert_response 204
  end
end
