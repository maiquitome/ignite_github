# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ignite_github,
  ecto_repos: [IgniteGithub.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :ignite_github, IgniteGithubWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DRga6aJEY13ISg/IvY5Xdh+WEzUols3g/I3lJiUIVjfkqbSCCCyuz52H6hp08UUs",
  render_errors: [view: IgniteGithubWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: IgniteGithub.PubSub,
  live_view: [signing_salt: "0k8otVdb"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
