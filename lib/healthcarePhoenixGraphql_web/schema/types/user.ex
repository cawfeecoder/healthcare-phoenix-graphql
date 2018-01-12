defmodule HealthcarePhoenixGraphqlWeb.Types.User do
  use Absinthe.Schema.Notation
  alias HealthcarePhoenixGraphql.Repo
  alias HealthcarePhoenixGraphqlWeb.Provider


    @desc "a user"
    object :user_type do
      field :id, :id
      field :name, :string
      field :providers, list_of(:provider_type),
            resolve: fn %{provider_id: id}, _, _ ->
              if id != nil do
                {:ok, Repo.get(Provider, id) }
              else
                {:ok, nil}
              end
            end
    end
end
