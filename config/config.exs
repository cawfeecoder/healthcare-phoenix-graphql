# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :healthcarePhoenixGraphql, HealthcarePhoenixGraphql.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "healthcarePhoenixGraphql_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"


config :healthcarePhoenixGraphql, HealthcarePhoenixGraphql.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "healthcarePhoenixGraphql_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"


# General application configuration
config :healthcarePhoenixGraphql,
  ecto_repos: [HealthcarePhoenixGraphql.Repo]

# Configures the endpoint
config :healthcarePhoenixGraphql, HealthcarePhoenixGraphqlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1LI+akwWZAZeIEonXA0XUbTUQ9AiJprJnfAx+kSjp5BLChPgQoruXbc3Yy8JqHWV",
  render_errors: [view: HealthcarePhoenixGraphqlWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HealthcarePhoenixGraphql.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
