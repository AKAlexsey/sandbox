defmodule Sandbox.RequestHandler do
  @moduledoc """
  Module for handling messages from telegram
  """

  use Agala.Chain.Builder
  use Agala.Provider.Telegram, :handler
  alias Agala.Conn

  chain(Agala.Provider.Telegram.Chain.Parser)
  chain(:handle)
  chain(:second_handle)

  def handle(conn, _opts) do
    IO.inspect(conn)
    conn
  end

  def second_handle(conn, _opts) do
    IO.puts("----> second handle <----")
    Conn.halt(conn)
  end
end
