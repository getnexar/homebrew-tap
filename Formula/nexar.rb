class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.6.0/nexar-darwin-amd64"
      sha256 "6ef2dcf6f7c24c4a5b3a4815872bfcf437eaa4aa15221d0920a52d036e8118bb"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.6.0/nexar-darwin-arm64"
      sha256 "d4f06533161cd5dc8f2ee3612457a781cc829f87c43a63103877944f76358029"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.6.0/nexar-linux-amd64"
      sha256 "ed22957cc097ae0d702b09ac1e460e50bc93b55e61c2c43465019c025e3cd455"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.6.0/nexar-linux-arm64"
      sha256 "bf4e8fe88a3d0ab7d43db5721dc9589d5e53b0efcee651e2d0dd017a1f87816a"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
