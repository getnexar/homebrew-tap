class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.13.0/nexar-darwin-amd64"
      sha256 "c15884c7404c0a83336507e29506d3e09363e3aeefcc3e505381da2a6dc67d68"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.13.0/nexar-darwin-arm64"
      sha256 "fe822748cdac105cd9a5959f97011acfe77c59981245600a540d15f4fa9d30c8"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.13.0/nexar-linux-amd64"
      sha256 "743b31026d3da1a811dacc855400f781dfd1c358af4446ab9e8490ab15cb9a0a"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.13.0/nexar-linux-arm64"
      sha256 "327eaf27a93d2f07cf98b23da889cbada14759618623c8c5f4e106736ba2710d"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
