use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :healthcarePhoenixGraphql, HealthcarePhoenixGraphqlWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :healthcarePhoenixGraphql, HealthcarePhoenixGraphql.Repo,
  adapter: RethinkDB.Ecto,
  database: "test",
  hostname: "localhost",
  pool_size: 40,
  port: 28015
