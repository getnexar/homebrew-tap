class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.4/nap-darwin-amd64"
      sha256 "47f07f0307b6d6f2bfe48803c0c8fa69a9c36a095e9db8604072bbb4c72739b8"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.4/nap-darwin-arm64"
      sha256 "7bd31cfef7844d7700584e89dd92824ea6f35f25dd36a0c5956786193997d9e3"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.4/nap-linux-amd64"
      sha256 "32f5305a79ff62e2b7a2e575fb5b80b52b03b549f40dcbc92775601bfaa611f6"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.4/nap-linux-arm64"
      sha256 "e1c55ff6233810912b0a3ebea3e10cdc17fdd6a3055f43476d1c42af385611f9"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
