defmodule SushifishWeb.PageControllerTest do
  #use Plug.Test
  use SushifishWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"

    assert html_response(conn, 200) =~ "i am sushifish."
  end

  test "GET /403", %{conn: conn} do
    conn = get conn, "/403"

    assert html_response(conn, 403) =~ "abbot is death process."
  end

  #test "GET /999", %{conn: conn} do
    #conn = get conn, "/999"

    #assert html_response(conn, 200) =~ "i am sushifish."
  #end

  test "GET /rando", %{conn: conn} do
    conn = get conn, "/rando"
    assert html_response(conn, 401) =~ "abbot is death process."
  end
end
