defmodule SushifishWeb.PageController do
  use SushifishWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
