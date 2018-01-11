defmodule HealthcarePhoenixGraphqlWeb.PageController do
  use HealthcarePhoenixGraphqlWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
