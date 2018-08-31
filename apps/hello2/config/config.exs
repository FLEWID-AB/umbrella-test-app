# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hello2,
  namespace: Hello2,
  ecto_repos: [Hello2.Repo]

# Configures the endpoint
config :hello2, Hello2Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "D8mctxaD0Akend+Cx2GzqvDR3Tqs7jwzAzkvgYIV/oMa/qk/yPfC5Yks5c8f3wZC",
  render_errors: [view: Hello2Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hello2.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
