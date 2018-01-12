defmodule HealthcarePhoenixGraphqlWeb.User do
  use Ecto.Schema
  import Ecto.Query
  import Ecto.Changeset

  alias HealthcarePhoenixGraphql.Repo
  alias HealthcarePhoenixGraphqlWeb.User

  @primary_key {:id, :binary_id, autogenerate: false}
  @foreign_key_type :binary_id

  schema "users" do
    field :name, :string
    field :provider_id, :string
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end

  def list_all_users do
    Repo.all(
      from u in User,
      limit: 100
    )
  end
end
