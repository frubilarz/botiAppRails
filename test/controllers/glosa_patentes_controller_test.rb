require 'test_helper'

class GlosaPatentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @glosa_patente = glosa_patentes(:one)
  end

  test "should get index" do
    get glosa_patentes_url, as: :json
    assert_response :success
  end

  test "should create glosa_patente" do
    assert_difference('GlosaPatente.count') do
      post glosa_patentes_url, params: { glosa_patente: { nombre: @glosa_patente.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show glosa_patente" do
    get glosa_patente_url(@glosa_patente), as: :json
    assert_response :success
  end

  test "should update glosa_patente" do
    patch glosa_patente_url(@glosa_patente), params: { glosa_patente: { nombre: @glosa_patente.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy glosa_patente" do
    assert_difference('GlosaPatente.count', -1) do
      delete glosa_patente_url(@glosa_patente), as: :json
    end

    assert_response 204
  end
end
