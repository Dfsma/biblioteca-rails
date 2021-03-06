require "application_system_test_case"

class AutorsLibrosTest < ApplicationSystemTestCase
  setup do
    @autors_libro = autors_libros(:one)
  end

  test "visiting the index" do
    visit autors_libros_url
    assert_selector "h1", text: "Autors Libros"
  end

  test "creating a Autors libro" do
    visit autors_libros_url
    click_on "New Autors Libro"

    fill_in "Autor", with: @autors_libro.autor_id
    fill_in "Libro", with: @autors_libro.libro_id
    click_on "Create Autors libro"

    assert_text "Autors libro was successfully created"
    click_on "Back"
  end

  test "updating a Autors libro" do
    visit autors_libros_url
    click_on "Edit", match: :first

    fill_in "Autor", with: @autors_libro.autor_id
    fill_in "Libro", with: @autors_libro.libro_id
    click_on "Update Autors libro"

    assert_text "Autors libro was successfully updated"
    click_on "Back"
  end

  test "destroying a Autors libro" do
    visit autors_libros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Autors libro was successfully destroyed"
  end
end
