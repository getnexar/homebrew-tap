class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.3.0-rc1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.0-rc1/nexar-darwin-amd64"
      sha256 "4a31691be9923b766b5b3c02879d73e5f5d7c61049f28d4bf91688bdea8f1431"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.0-rc1/nexar-darwin-arm64"
      sha256 "e578f978b94ecfd977f64b211d5e7ec3685845cc8c5d5956d2d4ae814f86f02a"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.0-rc1/nexar-linux-amd64"
      sha256 "5a48a743bc1501b717b7d0dc90bc569f0f30df15737a8cfc3f721996aaf38c0f"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.0-rc1/nexar-linux-arm64"
      sha256 "68283d3ccdd31c8d50930546ddb98d3fbddadd50c5dc7900bcc320417e797d4e"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
