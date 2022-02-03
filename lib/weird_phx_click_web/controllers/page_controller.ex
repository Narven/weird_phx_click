defmodule WeirdPhxClickWeb.PageController do
  use WeirdPhxClickWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
