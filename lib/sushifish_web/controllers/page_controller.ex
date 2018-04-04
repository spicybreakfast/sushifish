defmodule SushifishWeb.PageController do
  use SushifishWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def rando(conn, _params) do
    #codes = [401, 403, 404, 501, 503]
    codes = [401]
    conn
    |> put_status(Enum.random(codes))
    |> Phoenix.Controller.render(SushifishWeb.ErrorView, :something)
  end

  def show(conn, %{"id" => id}) do
    code = String.to_integer(id)
    conn
    |> put_status(code)
    |> Phoenix.Controller.render(SushifishWeb.ErrorView, :something)
  end
end
