defmodule DockerMultistage.PageController do
  use DockerMultistage.Web, :controller
  require Logger
  def index(conn, _params) do
    Logger.info("info test");
    render conn, "index.html"
  end
end
