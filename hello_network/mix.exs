defmodule HelloNetwork.Mixfile do

  use Mix.Project

  def project do
    [app: :hello_network,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application, do: [
    applications: [:nerves, :logger, :nerves_io_ethernet],
    mod: {HelloNetwork, [:nerves_io_ethernet]}
  ]

  defp deps, do: [
    {:nerves_io_ethernet, github: "nerves-project/nerves_io_ethernet"},
    {:nerves, github: "nerves-project/nerves"}
  ]

end