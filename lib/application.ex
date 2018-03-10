defmodule Sandbox.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    Supervisor.start_link(
      childrens_list,
      strategy: :one_for_one,
      name: __MODULE__
    )
  end

  def childrens_list do
    [
      # You can run any number of bots. Just specify different `name` and `token` in each bot configuration.
      {Agala.Bot, Sandbox.BotConfig.get()}
    ]
  end
end
