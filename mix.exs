defmodule Mock.Mixfile do
  use Mix.Project

  def project do
    [ app: :mock,
      name: "Mock",
      source_url: "https://github.com/jjh42/mock",
      homepage_url: "http://jjh42.github.io/mock",
      version: "0.0.3",
      deps: deps(Mix.env)
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "0.1", git: "https://github.com/elixir-lang/foobar.git" }
  # Dependencies only needed during development.
  defp deps(:dev) do
    [{ :docs_ghpages, github: "jjh42/docs_ghpages" }]
  end

  defp deps(_) do
    [ {:meck,"0.8.2", [github: "eproxus/meck", tag: "0.8.2"]}]
  end
end
