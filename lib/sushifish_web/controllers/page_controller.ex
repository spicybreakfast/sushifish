defmodule SushifishWeb.PageController do
  use SushifishWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def rando(conn, _params) do
    codes =
    case Application.get_env(:sushifish, :environment) do
      :test -> [401]
      _     -> [100, 201, 202, 403, 501, 503]
    end
    code = Enum.random(codes)
    conn
    |> put_status(code)
    |> Phoenix.Controller.render(SushifishWeb.ErrorView, :something, code: code)
  end

  def show(conn, %{"id" => id}) do
    code = String.to_integer(id)
    conn
    |> put_status(code)
    |> Phoenix.Controller.render(SushifishWeb.ErrorView, :something, code: code)
  end
end
