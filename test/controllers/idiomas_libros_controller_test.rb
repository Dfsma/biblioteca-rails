require 'test_helper'

class IdiomasLibrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idiomas_libro = idiomas_libros(:one)
  end

  test "should get index" do
    get idiomas_libros_url
    assert_response :success
  end

  test "should get new" do
    get new_idiomas_libro_url
    assert_response :success
  end

  test "should create idiomas_libro" do
    assert_difference('IdiomasLibro.count') do
      post idiomas_libros_url, params: { idiomas_libro: { idioma_id: @idiomas_libro.idioma_id, libro_id: @idiomas_libro.libro_id } }
    end

    assert_redirected_to idiomas_libro_url(IdiomasLibro.last)
  end

  test "should show idiomas_libro" do
    get idiomas_libro_url(@idiomas_libro)
    assert_response :success
  end

  test "should get edit" do
    get edit_idiomas_libro_url(@idiomas_libro)
    assert_response :success
  end

  test "should update idiomas_libro" do
    patch idiomas_libro_url(@idiomas_libro), params: { idiomas_libro: { idioma_id: @idiomas_libro.idioma_id, libro_id: @idiomas_libro.libro_id } }
    assert_redirected_to idiomas_libro_url(@idiomas_libro)
  end

  test "should destroy idiomas_libro" do
    assert_difference('IdiomasLibro.count', -1) do
      delete idiomas_libro_url(@idiomas_libro)
    end

    assert_redirected_to idiomas_libros_url
  end
end
