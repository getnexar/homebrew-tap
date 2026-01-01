class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.0.0/nexar-darwin-amd64"
      sha256 "e22341d5d48b9a081497b89f547835a40cb002f877bb84460c4c606da3b449d7"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.0.0/nexar-darwin-arm64"
      sha256 "84603022d4a4a23cc31b4227443bb3964ea089ba26cbc28879c3dfd6b391afc3"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.0.0/nexar-linux-amd64"
      sha256 "23c5dad253581e908a40264d37149dc500547367882111adbad1dbc3abe98da4"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.0.0/nexar-linux-arm64"
      sha256 "2fa9cdcacd1fadb0fabcf0b2f97dba78d46a1a2cf243d79d3e9bfd357d37afb0"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
