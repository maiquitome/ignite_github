defmodule IgniteGithub.Repo do
  use Ecto.Repo,
    otp_app: :ignite_github,
    adapter: Ecto.Adapters.Postgres
end
