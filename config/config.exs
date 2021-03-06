# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :react_phoenix_example, ReactPhoenixExample.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ovDAtas2oifNY7hycmaRdjVJYOh6E5/wMTJ9U0HZgtpLgvC+5FxOve7/Pmh8zArI",
  render_errors: [view: ReactPhoenixExample.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ReactPhoenixExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :react_phoenix,
  compiled_path: Path.join(["priv", "static", "js", "components"])

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
