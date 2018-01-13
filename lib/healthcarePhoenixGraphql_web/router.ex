defmodule HealthcarePhoenixGraphqlWeb.Router do
  use HealthcarePhoenixGraphqlWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :browser # Use the default browser stack
  end

  scope "/api" do
     pipe_through :api

     forward "/", Absinthe.Plug,
       schema:  HealthcarePhoenixGraphqlWeb.Schema
   end

  scope "/graphiql" do
     forward "/", Absinthe.Plug.GraphiQL,
     schema: HealthcarePhoenixGraphqlWeb.Schema,
     socket: HealthcarePhoenixGraphqlWeb.UserSocket
  end

end
