class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.6/nap-darwin-amd64"
      sha256 "10687b842da911b7b5df27a265276942000604f77c5d5247efaf6086de5f140a"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.6/nap-darwin-arm64"
      sha256 "284cbb10fab2b0a3c5e7598720fd5003f6e0fc120bcdc990cd27134462ef60be"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.6/nap-linux-amd64"
      sha256 "85d9863e569e64482b38ca69bff42178a419dd3b57b6934858d9df0d370e3853"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.6/nap-linux-arm64"
      sha256 "3ce221f02e19e8b1d31d69e3d1eb3a3a4157f7de9e450e2ec1f1b658a8fcbf07"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
