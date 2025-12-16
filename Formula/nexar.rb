class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.8.0/nexar-darwin-amd64"
      sha256 "27c72759c154701246da3ce21c508470ecfb5f262dc049a3e64fd897b1dd5f41"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.8.0/nexar-darwin-arm64"
      sha256 "8e8c6685debed72b3156e39006dec71808fd4dff6cf11af18abaf00503543fe7"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.8.0/nexar-linux-amd64"
      sha256 "42d9e3eb07f60e0e736f55f14455e21d82c2ba248bbbbb569dbc14dbc91cccc5"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.8.0/nexar-linux-arm64"
      sha256 "390a6b285601aa3b55a412ca037fb1db2d1e8d4de3341784393e3a4d43026d92"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
