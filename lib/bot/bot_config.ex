defmodule Sandbox.BotConfig do
  @moduledoc false

  alias Agala.Provider.Telegram.Conn.ProviderParams

  def get do
    %Agala.BotParams{
      name: Application.get_env(:sandbox, :agala_telegram)[:name],
      provider: Agala.Provider.Telegram,
      handler: Sandbox.RequestHandler,
      provider_params: %ProviderParams{
        token: Application.get_env(:sandbox, :agala_telegram)[:token],
        poll_timeout: :infinity
      }
    }
  end
end
