require "application_system_test_case"

class MultaTest < ApplicationSystemTestCase
  setup do
    @multum = multa(:one)
  end

  test "visiting the index" do
    visit multa_url
    assert_selector "h1", text: "Multa"
  end

  test "should create multum" do
    visit multa_url
    click_on "New multum"

    fill_in "Prestamo", with: @multum.Prestamo_id
    fill_in "Estado", with: @multum.estado
    fill_in "Fecha", with: @multum.fecha
    fill_in "Valor", with: @multum.valor
    click_on "Create Multum"

    assert_text "Multum was successfully created"
    click_on "Back"
  end

  test "should update Multum" do
    visit multum_url(@multum)
    click_on "Edit this multum", match: :first

    fill_in "Prestamo", with: @multum.Prestamo_id
    fill_in "Estado", with: @multum.estado
    fill_in "Fecha", with: @multum.fecha
    fill_in "Valor", with: @multum.valor
    click_on "Update Multum"

    assert_text "Multum was successfully updated"
    click_on "Back"
  end

  test "should destroy Multum" do
    visit multum_url(@multum)
    click_on "Destroy this multum", match: :first

    assert_text "Multum was successfully destroyed"
  end
end
