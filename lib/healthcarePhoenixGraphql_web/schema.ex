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
      resolve &HealthcarePhoenixGraphqlWeb.UserResolver.all/2
    end
  end

  mutation do
    @desc "Create a new user"
    field :create_user, type: :user_type do
      arg :name, non_null(:string)
      arg :provider_id, :string
      resolve &HealthcarePhoenixGraphqlWeb.UserResolver.create/2
    end
  end

  subscription do
    @desc "Get notified when a new user is created"
    field :user_created, type: :user_type do

      config fn args, _ ->
        {:ok, topic: "user_created"}
      end

      trigger :create_user, topic: fn user ->
        "user_created"
      end

    end
  end
end
