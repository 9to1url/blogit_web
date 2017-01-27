use Mix.Config

# General application configuration
config :blogit_web,
  ecto_repos: [BlogitWeb.Repo]

# Configures the endpoint
config :blogit_web, BlogitWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Sb/ttEadRlXB1E+P8/em9tXKUpBgGyf/mi7WwoAbhwYOf1EfsGILRZthHTXNDk2/",
  render_errors: [view: BlogitWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BlogitWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :blogit_web, BlogitWeb.Gettext, default_locale: "bg"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
