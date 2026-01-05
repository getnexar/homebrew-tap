class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.3.0-rc1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.0-rc1/nexar-darwin-amd64"
      sha256 "3b1c0c1993eb4888b7cf51b1f4b552eb9128e6162a52b0fc7e6043adde8cb004"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.0-rc1/nexar-darwin-arm64"
      sha256 "f8d10b3831df7246e24977d8cff0af60e879d6a95787f228e3b2769ef8eef891"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.0-rc1/nexar-linux-amd64"
      sha256 "792bde9c59297c961db2a1e3f88e2b2f049fe7647bc00495ad7e7cd5382d7764"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.0-rc1/nexar-linux-arm64"
      sha256 "08f83ec15ce4af0fac8f7fde08640a0b265f52e84366d89949a6df1adc64b8fd"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
