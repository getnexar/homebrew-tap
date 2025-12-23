class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.10.1/nexar-darwin-amd64"
      sha256 "37c80a6b6df69fdd70c6f0bc0ecdfe364814e9bcbf6327c971ce68bf1f6b2d18"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.10.1/nexar-darwin-arm64"
      sha256 "8974b7587d4ef153e9e312ee9f88ea6bb74f4afa6a35f1ba34d56ce5da9b8b12"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.10.1/nexar-linux-amd64"
      sha256 "2ba47037fa2adcc16b6ccddbb69cb1c85271e97ba987115d0e8f10a756d6fe54"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.10.1/nexar-linux-arm64"
      sha256 "8466bfe6cc358e978416837f11cf53ec3ccd754f6506187fffbdd43535315466"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
