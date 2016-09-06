require 'test_helper'

class LocalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @local = locals(:one)
  end

  test "should get index" do
    get locals_url, as: :json
    assert_response :success
  end

  test "should create local" do
    assert_difference('Local.count') do
      post locals_url, params: { local: { comuna_id: @local.comuna_id, direccion: @local.direccion, glosa_patente_id: @local.glosa_patente_id, latitud: @local.latitud, longuitud: @local.longuitud, nombre: @local.nombre, rut: @local.rut, telefono: @local.telefono, tipo_patente_id: @local.tipo_patente_id, web: @local.web } }, as: :json
    end

    assert_response 201
  end

  test "should show local" do
    get local_url(@local), as: :json
    assert_response :success
  end

  test "should update local" do
    patch local_url(@local), params: { local: { comuna_id: @local.comuna_id, direccion: @local.direccion, glosa_patente_id: @local.glosa_patente_id, latitud: @local.latitud, longuitud: @local.longuitud, nombre: @local.nombre, rut: @local.rut, telefono: @local.telefono, tipo_patente_id: @local.tipo_patente_id, web: @local.web } }, as: :json
    assert_response 200
  end

  test "should destroy local" do
    assert_difference('Local.count', -1) do
      delete local_url(@local), as: :json
    end

    assert_response 204
  end
end
