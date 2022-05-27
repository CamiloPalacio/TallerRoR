require "application_system_test_case"

class DetallesTest < ApplicationSystemTestCase
  setup do
    @detalle = detalles(:one)
  end

  test "visiting the index" do
    visit detalles_url
    assert_selector "h1", text: "Detalles"
  end

  test "should create detalle" do
    visit detalles_url
    click_on "New detalle"

    fill_in "Libro", with: @detalle.Libro_id
    fill_in "Prestamo", with: @detalle.Prestamo_id
    fill_in "Cantidad", with: @detalle.cantidad
    click_on "Create Detalle"

    assert_text "Detalle was successfully created"
    click_on "Back"
  end

  test "should update Detalle" do
    visit detalle_url(@detalle)
    click_on "Edit this detalle", match: :first

    fill_in "Libro", with: @detalle.Libro_id
    fill_in "Prestamo", with: @detalle.Prestamo_id
    fill_in "Cantidad", with: @detalle.cantidad
    click_on "Update Detalle"

    assert_text "Detalle was successfully updated"
    click_on "Back"
  end

  test "should destroy Detalle" do
    visit detalle_url(@detalle)
    click_on "Destroy this detalle", match: :first

    assert_text "Detalle was successfully destroyed"
  end
end
