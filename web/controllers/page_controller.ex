defmodule TrelloRewriteMe.PageController do
  use TrelloRewriteMe.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
