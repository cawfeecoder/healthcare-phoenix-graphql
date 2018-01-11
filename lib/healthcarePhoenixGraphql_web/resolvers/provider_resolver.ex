defmodule HealthcarePhoenixGraphqlWeb.ProviderResolver do

  def all(_parent, args, _resolution) do
    {:ok, HealthcarePhoenixGraphqlWeb.Provider.list_all_providers()}
  end
end
