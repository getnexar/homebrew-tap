class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://platform.corp.nexars.ai"
  version "1.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.1.2/nexar-darwin-amd64"
      sha256 "235256840a36641273cc03ab89b187c8b152179337cf73fb0bf802890709562d"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.1.2/nexar-darwin-arm64"
      sha256 "8525673d907a3af017625d9e4fe76e7a02929fafd3d10850b7e806c6d80ec104"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.1.2/nexar-linux-amd64"
      sha256 "9b93fbac3bb74940a7e0ef6e7adfec56183528feba1cd9a72b1ed473cff2cb40"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.1.2/nexar-linux-arm64"
      sha256 "d3a2f01d3cf0414f4086113899c2efff18b7625ecb6a73a7e607031318c93ea0"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
