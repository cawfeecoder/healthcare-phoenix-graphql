defmodule HealthcarePhoenixGraphqlWeb.Schema do
  use Absinthe.Schema
  import_types HealthcarePhoenixGraphqlWeb.Types.Provider
  alias HealthcarePhoenixGraphqlWeb.Provider

  query do
    @desc "Get all Healthcare Providers"
    field :providers, list_of(:provider) do
      resolve &HealthcarePhoenixGraphqlWeb.ProviderResolver.all/3
    end
  end
end
