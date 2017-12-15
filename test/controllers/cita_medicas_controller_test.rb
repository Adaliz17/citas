require 'test_helper'

class CitaMedicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cita_medica = cita_medicas(:one)
  end

  test "should get index" do
    get cita_medicas_url
    assert_response :success
  end

  test "should get new" do
    get new_cita_medica_url
    assert_response :success
  end

  test "should create cita_medica" do
    assert_difference('CitaMedica.count') do
      post cita_medicas_url, params: { cita_medica: { doctor_id: @cita_medica.doctor_id, fecha: @cita_medica.fecha, persona_id: @cita_medica.persona_id } }
    end

    assert_redirected_to cita_medica_url(CitaMedica.last)
  end

  test "should show cita_medica" do
    get cita_medica_url(@cita_medica)
    assert_response :success
  end

  test "should get edit" do
    get edit_cita_medica_url(@cita_medica)
    assert_response :success
  end

  test "should update cita_medica" do
    patch cita_medica_url(@cita_medica), params: { cita_medica: { doctor_id: @cita_medica.doctor_id, fecha: @cita_medica.fecha, persona_id: @cita_medica.persona_id } }
    assert_redirected_to cita_medica_url(@cita_medica)
  end

  test "should destroy cita_medica" do
    assert_difference('CitaMedica.count', -1) do
      delete cita_medica_url(@cita_medica)
    end

    assert_redirected_to cita_medicas_url
  end
end
