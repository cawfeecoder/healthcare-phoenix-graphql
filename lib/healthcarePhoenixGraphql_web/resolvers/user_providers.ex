defmodule HealthcarePhoenixGraphqlWeb.UserResolver do
  alias HealthcarePhoenixGraphqlWeb.User

  def all(_args, _info) do
    {:ok, User.list_all_users()}
  end

  def create(args, _info) do
    User.create(args)
  end
end
