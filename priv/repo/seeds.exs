# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     HealthcarePhoenixGraphql.Repo.insert!(%HealthcarePhoenixGraphql.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias HealthcarePhoenixGraphqlWeb.Provider
import Ecto.Query

Repo.insert!(%Provider{name: "Test2"})
