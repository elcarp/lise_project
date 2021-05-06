# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :lise_project,
  ecto_repos: [LiseProject.Repo]

# Configures the endpoint
config :lise_project, LiseProjectWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wvznOdEAF+9a6HSLJ6ER36x7fYr5JxqZj3a1icLYCpWW2R/ARCokHmyW69Xo9rRU",
  render_errors: [view: LiseProjectWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiseProject.PubSub,
  live_view: [signing_salt: "/zGCovKw"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
