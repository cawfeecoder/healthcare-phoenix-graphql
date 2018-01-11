defmodule HealthcarePhoenixGraphql.Repo.Migrations.CreateProviderTable do
  use Ecto.Migration

  def change do
    create table(:providers)
    create index(:providers, [:id])
  end
end
