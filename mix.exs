defmodule Alfred.Mixfile do
  use Mix.Project

  def project do
    [app: :alfred,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :slack, :httpoison, :exparticle],
     mod: {Alfred, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:slack, "~> 0.4.2"},
     {:httpoison, "~> 0.8.0"},
     {:poison, "~> 1.5"},
     {:exparticle, "~> 0.0.2"},
     {:websocket_client, git: "https://github.com/jeremyong/websocket_client"}]
  end
end
