defmodule HealthcarePhoenixGraphqlWeb.Schema do
  use Absinthe.Schema
  import_types HealthcarePhoenixGraphqlWeb.Types.Provider
  import_types HealthcarePhoenixGraphqlWeb.Types.User
  alias HealthcarePhoenixGraphqlWeb.Provider

  query do
    @desc "Get all Healthcare Providers"
    field :providers, list_of(:provider_type) do
      resolve &HealthcarePhoenixGraphqlWeb.ProviderResolver.all/3
    end

    @desc "Get all Users"
    field :users, list_of(:user_type) do
      resolve &HealthcarePhoenixGraphqlWeb.UserResolver.all/3
    end
  end
end
