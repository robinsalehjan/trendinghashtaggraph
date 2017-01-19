defmodule TrendingHashtagGraph.Mixfile do
  @moduledoc false
  use Mix.Project

  def project do
    [apps_path: "apps",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     dialyzer: [plt_add_deps: :transitive, flags: [["-Woverspecs",
                                                    "-Werror_handling",
                                                    "-Wrace_conditions"]]]
   ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options.
  #
  # Dependencies listed here are available only for this project
  # and cannot be accessed from applications inside the apps folder
  defp deps() do
    [{:credo, "~> 0.6.0", only: [:dev, :test]},
     {:dialyxir, "~> 0.4.0", only: [:dev]}]
  end
end
