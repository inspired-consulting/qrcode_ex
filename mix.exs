defmodule QRCodeEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :qrcode_ex,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      name: "QRCodeEx",
      description: "Simple QRCode Generator in Elixir (revamped eqrcode)",
      source_url: "https://github.com/inspired-consulting/qrcode_ex",
      package: package(),
      deps: deps(),
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package() do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/inspired-consulting/qrcode_ex"},
      maintainers: ["inspired-consulting"]
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: [
        "README.md"
      ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.24", only: :dev, runtime: false}
    ]
  end
end
