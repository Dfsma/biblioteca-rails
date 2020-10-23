require "application_system_test_case"

class IdiomasLibrosTest < ApplicationSystemTestCase
  setup do
    @idiomas_libro = idiomas_libros(:one)
  end

  test "visiting the index" do
    visit idiomas_libros_url
    assert_selector "h1", text: "Idiomas Libros"
  end

  test "creating a Idiomas libro" do
    visit idiomas_libros_url
    click_on "New Idiomas Libro"

    fill_in "Idioma", with: @idiomas_libro.idioma_id
    fill_in "Libro", with: @idiomas_libro.libro_id
    click_on "Create Idiomas libro"

    assert_text "Idiomas libro was successfully created"
    click_on "Back"
  end

  test "updating a Idiomas libro" do
    visit idiomas_libros_url
    click_on "Edit", match: :first

    fill_in "Idioma", with: @idiomas_libro.idioma_id
    fill_in "Libro", with: @idiomas_libro.libro_id
    click_on "Update Idiomas libro"

    assert_text "Idiomas libro was successfully updated"
    click_on "Back"
  end

  test "destroying a Idiomas libro" do
    visit idiomas_libros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Idiomas libro was successfully destroyed"
  end
end
