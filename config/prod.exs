use Mix.Config

# For production, we configure the host to read the PORT
# from the system environment. Therefore, you will need
# to set PORT=80 before running your server.
#
# You should also configure the url host to something
# meaningful, we use this information when generating URLs.
#
# Finally, we also include the path to a manifest
# containing the digested version of static files. This
# manifest is generated by the mix phoenix.digest task
# which you typically run after static files are built.
config :blogit_web, BlogitWeb.Web.Endpoint,
  http: [port: 8888],
  url: [host: "elixir-lang.bg", port: 80],
  cache_static_manifest: "priv/static/manifest.json",
  server: true,
  root: ".",
  disqus_host: "themeddle-com",
  version: Mix.Project.config[:version]

config :phoenix, :serve_endpoints, true

# Do not print debug messages in production
config :logger, level: :info, format: "[$level] $message\n",
  backends: [
    { LoggerFileBackend, :error_log }, { LoggerFileBackend, :info_log },
    :console
  ]

config :logger, :error_log, path: "log/error.log", level: :error
config :logger, :info_log, path: "log/info.log", level: :info

config :blogit,
  repository_url: "https://github.com/meddle0x53/blogit_sample",
  polling: true, poll_interval: 300, max_lines_in_preview: 5,
  languages: ~w(en bg)
