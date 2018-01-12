defmodule HealthcarePhoenixGraphqlWeb.UserResolver do

  def all(_parent, args, _resolution) do
    {:ok, HealthcarePhoenixGraphqlWeb.User.list_all_users()}
  end
end
