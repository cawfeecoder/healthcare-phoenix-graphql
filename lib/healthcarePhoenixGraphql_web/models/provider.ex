defmodule HealthcarePhoenixGraphqlWeb.Provider do
  use Ecto.Schema
  import Ecto.Query
  import Ecto.Changeset

  alias HealthcarePhoenixGraphql.Repo
  alias HealthcarePhoenixGraphqlWeb.Provider

  @primary_key {:id, :binary_id, autogenerate: false}
  @foreign_key_type :binary_id

  schema "providers" do
    field :company_name, :string
    has_many :users, User
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end

  def list_all_providers do
    Repo.all(Provider)
  end

end
