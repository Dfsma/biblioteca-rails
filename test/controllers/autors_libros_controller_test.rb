require 'test_helper'

class AutorsLibrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autors_libro = autors_libros(:one)
  end

  test "should get index" do
    get autors_libros_url
    assert_response :success
  end

  test "should get new" do
    get new_autors_libro_url
    assert_response :success
  end

  test "should create autors_libro" do
    assert_difference('AutorsLibro.count') do
      post autors_libros_url, params: { autors_libro: { autor_id: @autors_libro.autor_id, libro_id: @autors_libro.libro_id } }
    end

    assert_redirected_to autors_libro_url(AutorsLibro.last)
  end

  test "should show autors_libro" do
    get autors_libro_url(@autors_libro)
    assert_response :success
  end

  test "should get edit" do
    get edit_autors_libro_url(@autors_libro)
    assert_response :success
  end

  test "should update autors_libro" do
    patch autors_libro_url(@autors_libro), params: { autors_libro: { autor_id: @autors_libro.autor_id, libro_id: @autors_libro.libro_id } }
    assert_redirected_to autors_libro_url(@autors_libro)
  end

  test "should destroy autors_libro" do
    assert_difference('AutorsLibro.count', -1) do
      delete autors_libro_url(@autors_libro)
    end

    assert_redirected_to autors_libros_url
  end
end
