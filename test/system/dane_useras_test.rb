require "application_system_test_case"

class DaneUserasTest < ApplicationSystemTestCase
  setup do
    @dane_usera = dane_useras(:one)
  end

  test "visiting the index" do
    visit dane_useras_url
    assert_selector "h1", text: "Dane useras"
  end

  test "should create dane usera" do
    visit dane_useras_url
    click_on "New dane usera"

    fill_in "Imie", with: @dane_usera.imie
    fill_in "Nazwisko", with: @dane_usera.nazwisko
    fill_in "Nick", with: @dane_usera.nick
    fill_in "Pompki dzis", with: @dane_usera.pompki_dzis
    fill_in "Wiek", with: @dane_usera.wiek
    click_on "Create Dane usera"

    assert_text "Dane usera was successfully created"
    click_on "Back"
  end

  test "should update Dane usera" do
    visit dane_usera_url(@dane_usera)
    click_on "Edit this dane usera", match: :first

    fill_in "Imie", with: @dane_usera.imie
    fill_in "Nazwisko", with: @dane_usera.nazwisko
    fill_in "Nick", with: @dane_usera.nick
    fill_in "Pompki dzis", with: @dane_usera.pompki_dzis
    fill_in "Wiek", with: @dane_usera.wiek
    click_on "Update Dane usera"

    assert_text "Dane usera was successfully updated"
    click_on "Back"
  end

  test "should destroy Dane usera" do
    visit dane_usera_url(@dane_usera)
    click_on "Destroy this dane usera", match: :first

    assert_text "Dane usera was successfully destroyed"
  end
end
