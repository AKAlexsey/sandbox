defmodule Sandbox.MixProject do
  use Mix.Project

  def project do
    [
      app: :sandbox,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Sandbox.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:agala_telegram, "~> 0.1.2"}
    ]
  end
end
