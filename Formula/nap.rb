class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.3/nap-darwin-amd64"
      sha256 "08c2f33894ca2933602743b64edf8fef345188ec77b73f70d74b7996ede1c772"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.3/nap-darwin-arm64"
      sha256 "ae446a4f137ce4e5b17f9ea6d2c9a2713ea603b2072e7f7364ce2d48c16f1efc"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.3/nap-linux-amd64"
      sha256 "3db37f27323d656fb25bdca885e5088541779022c56f3bfdb750644432897f2a"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.3/nap-linux-arm64"
      sha256 "49d38a516a18eb79d451826357e2155b91793c6403d3b277355ff7e030ee63c2"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
