import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :weird_phx_click, WeirdPhxClickWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "KTB/3TDxMIimzp3gDfWWBq5gqb7rQguuRU30IiA+g0jmJJT4WkxIj1ZSri0Mndfq",
  server: false

# In test we don't send emails.
config :weird_phx_click, WeirdPhxClick.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
