# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# NOTE Token of telegram bot with name "sandbox_example".
# You can create your own by using @BotFather.
config :sandbox, :agala_telegram,
  name: "sandbox_telegram_bot" # It must not strict to you telegram bot name. It's using to call specific bot.

if File.regular?("./config/config.custom.exs") do
  import_config "config.custom.exs"
end
