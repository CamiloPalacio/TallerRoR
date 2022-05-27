require "application_system_test_case"

class UsuariosTest < ApplicationSystemTestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "visiting the index" do
    visit usuarios_url
    assert_selector "h1", text: "Usuarios"
  end

  test "should create usuario" do
    visit usuarios_url
    click_on "New usuario"

    fill_in "Apellidos", with: @usuario.apellidos
    fill_in "Direccion", with: @usuario.direccion
    fill_in "Email", with: @usuario.email
    fill_in "Login", with: @usuario.login
    fill_in "Nombres", with: @usuario.nombres
    fill_in "Password", with: @usuario.password
    fill_in "Telefono", with: @usuario.telefono
    click_on "Create Usuario"

    assert_text "Usuario was successfully created"
    click_on "Back"
  end

  test "should update Usuario" do
    visit usuario_url(@usuario)
    click_on "Edit this usuario", match: :first

    fill_in "Apellidos", with: @usuario.apellidos
    fill_in "Direccion", with: @usuario.direccion
    fill_in "Email", with: @usuario.email
    fill_in "Login", with: @usuario.login
    fill_in "Nombres", with: @usuario.nombres
    fill_in "Password", with: @usuario.password
    fill_in "Telefono", with: @usuario.telefono
    click_on "Update Usuario"

    assert_text "Usuario was successfully updated"
    click_on "Back"
  end

  test "should destroy Usuario" do
    visit usuario_url(@usuario)
    click_on "Destroy this usuario", match: :first

    assert_text "Usuario was successfully destroyed"
  end
end
