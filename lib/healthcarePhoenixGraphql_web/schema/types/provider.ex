defmodule HealthcarePhoenixGraphqlWeb.Types.Provider do
  use Absinthe.Schema.Notation

    @desc "a provider"
    object :provider_type do
      field :id, :id
      field :company_name, :string
    end
end
