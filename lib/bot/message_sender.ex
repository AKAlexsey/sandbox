defmodule Sandbox.MessageSender do
  @moduledoc """
  Module for sending messages to telegram
  """

  use Agala.Provider.Telegram, :handler
  alias Agala.Conn

  @bot_name Application.get_env(:sandbox, :agala_telegram)[:name]

  def answer(telegram_user_id, message) do
    Agala.response_with(
      %Conn{}
      |> Conn.send_to(@bot_name)
      |> send_message(telegram_user_id, message, [])
    )
  end

  def answer_with_fallback(telegram_user_id, message) do
    Agala.response_with(
      %Conn{}
      |> Conn.send_to(@bot_name)
      |> send_message(telegram_user_id, message, [])
      |> Conn.with_fallback(&message_fallback(&1))
    )
  end

  defp message_fallback(conn) do
    IO.puts("----> Message has been sent <----")
    IO.inspect(conn)
  end
end
