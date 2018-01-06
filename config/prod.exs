use Mix.Config

# When Distillery builds our release, these config files are evaluated at
# compile time. As a result, we cannot just use System.get_/env to fetch the
# environment variable because it will pull from the dev machine. Instead, we
# use template strings, which will be evaluated at run time as long as we have
# the enviornment variable `REPLACE_OS_VARS=true` set.
#
# server: true -> will start the server automatically starts the server
# root: "." -> configure root for static files (not needed if API only phx)
# cache_static_manifest -> can be removed (along w/ root) if only serving API
config :myapp, MyappWeb.Endpoint,
  http: [port: "${PORT}"],
  url: [host: "${HOST}", port: "${PORT}"],
  cache_static_manifest: "priv/static/manifest.json",
  secret_key_base: "${SECRET_KEY_BASE}",
  server: true,
  root: "."

# Do not print debug messages in production
config :logger, level: :info

config :myapp, Myapp.Repo,
  adapter: Ecto.Adapters.Postgres,
  hostname: "${DB_HOSTNAME}",
  database: "${DB_NAME}",
  pool_size: 20
