defmodule Iascurlshortener.MixProject do
  use Mix.Project

  def project do
    [
      app: :iascurlshortener,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :eex, :wx, :observer, :runtime_tools],
      mod: {UrlShortener.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:libcluster, "~> 3.5"},
      {:horde, "~> 0.9.0"}
    ]
  end
end
