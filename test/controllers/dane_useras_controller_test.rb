require "test_helper"

class DaneUserasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dane_usera = dane_useras(:one)
  end

  test "should get index" do
    get dane_useras_url
    assert_response :success
  end

  test "should get new" do
    get new_dane_usera_url
    assert_response :success
  end

  test "should create dane_usera" do
    assert_difference("DaneUsera.count") do
      post dane_useras_url, params: { dane_usera: { imie: @dane_usera.imie, nazwisko: @dane_usera.nazwisko, nick: @dane_usera.nick, pompki_dzis: @dane_usera.pompki_dzis, wiek: @dane_usera.wiek } }
    end

    assert_redirected_to dane_usera_url(DaneUsera.last)
  end

  test "should show dane_usera" do
    get dane_usera_url(@dane_usera)
    assert_response :success
  end

  test "should get edit" do
    get edit_dane_usera_url(@dane_usera)
    assert_response :success
  end

  test "should update dane_usera" do
    patch dane_usera_url(@dane_usera), params: { dane_usera: { imie: @dane_usera.imie, nazwisko: @dane_usera.nazwisko, nick: @dane_usera.nick, pompki_dzis: @dane_usera.pompki_dzis, wiek: @dane_usera.wiek } }
    assert_redirected_to dane_usera_url(@dane_usera)
  end

  test "should destroy dane_usera" do
    assert_difference("DaneUsera.count", -1) do
      delete dane_usera_url(@dane_usera)
    end

    assert_redirected_to dane_useras_url
  end
end
