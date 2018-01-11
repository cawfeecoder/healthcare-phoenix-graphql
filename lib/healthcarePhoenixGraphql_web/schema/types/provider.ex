defmodule HealthcarePhoenixGraphqlWeb.Types.Provider do
  use Absinthe.Schema.Notation

    @desc "a provider"
    object :provider do
      field :id, :id
      field :name, :string
    end
end
