class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.4.0/nexar-darwin-amd64"
      sha256 "07efe27113750c95871efa59a13c3d9df6290f15766719aa4aae0b80ccec9d09"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.4.0/nexar-darwin-arm64"
      sha256 "1b2e5dcd9eb7c5747be19a5802111cbbf8c58d601d494940ba8fc5e44c90eea6"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.4.0/nexar-linux-amd64"
      sha256 "92e5d84f65eb41852c08b7b83ac231a3a2312bcbeabab2af1f28f06454666b46"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.4.0/nexar-linux-arm64"
      sha256 "21be608b57c373aee923309659909cb2b8e712f8c1d6e91727070fa6618f84d3"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
