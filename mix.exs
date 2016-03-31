defmodule Logster.Mixfile do
  use Mix.Project

  def project do
    [app: :logster,
     version: "0.1.0",
     description: "Easily parsable log output for Plug and Phoenix applications",
     package: package,
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:plug, "~> 1.0"},
     {:poison, "~> 1.5 or ~> 2.0"},

     {:mix_test_watch, "~> 0.2", only: :dev},
     {:ex_unit_notifier, "~> 0.1", only: :test}]
  end

  defp package do
    [files: ["lib", "mix.exs", "README*", "LICENSE*"],
     maintainers: ["Navin Peiris"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/navinpeiris/logster"}]
  end
end
