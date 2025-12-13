class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://platform.corp.nexars.ai"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.2.0/nexar-darwin-amd64"
      sha256 "51fbbc6a4d2883b2ed6f6f5a2ddc892c4e4986e3472d6f84c852769a52f88ba4"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.2.0/nexar-darwin-arm64"
      sha256 "f5f6b23f22029c652e88431d96a6806563ee90f6293f94da22d541d161eb4a6f"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.2.0/nexar-linux-amd64"
      sha256 "68a0c88d8942a54ca4803c472433de9e330b134bf787f29f769f19d3560fd20a"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.2.0/nexar-linux-arm64"
      sha256 "78228e92db35a122300f9e3f869841cd6b5d8f5710f6a6f377325c37bddddd2f"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
