use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :trello_rewrite_me, TrelloRewriteMe.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :trello_rewrite_me, TrelloRewriteMe.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "trello_rewrite_me_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
