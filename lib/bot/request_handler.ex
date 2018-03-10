defmodule Sandbox.RequestHandler do
  @moduledoc false

  use Agala.Chain.Builder # Add it in handler. It will allow you to use `chain` macro
  use Agala.Provider.Telegram, :handler # Specify provider.
  alias Agala.Conn

  # Chain macro. Works just like `plug` macro.
  # You can pass there module. Like here.
  chain(Agala.Provider.Telegram.Chain.Parser)
  # Module must
  # 1. Have one `init` method with specification `@spec init(opts :: Keyword.t) :: Keyword.t`. Options will be passed to `call` function.
  # 2. Have one `call` method with specification `@spec call(conn :: Agala.Conn.t, opts :: Keyword.t) :: Agala.Conn.t`. Attention! It must return `Agala.Conn.t` function for chaining.

  # Or you can pass there current module function name
  # Function must have specification `@spec call(conn :: Agala.Conn.t, opts :: Keyword.t) :: Agala.Conn.t`
  chain(:handle)
  chain(:second_handle)

  def handle(%Conn{request: %{message: %{text: text, from: %{first_name: first_name, id: user_telegram_id}}}} = conn, _opts) do
    IO.puts("#{first_name} #{user_telegram_id} : #{text}")
    conn
  end

  def second_handle(conn, _opts) do
    IO.puts("----> You have just received message <----")
    Conn.halt(conn)
  end
end
