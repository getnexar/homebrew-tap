class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.5.0/nexar-darwin-amd64"
      sha256 "586440096b7b7d15d7da3926d57415de8b00240173f453f3229fa83321b6c4cc"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.5.0/nexar-darwin-arm64"
      sha256 "3aebb961210cf05a51f39e6250a6f689aeeaeaba9e7a8abc8e14f6ce74a0949b"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.5.0/nexar-linux-amd64"
      sha256 "d3bdce67223967a42b3ea71e1d0fef80a7bec66b3cc47a156c3d695e26ff7c0d"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.5.0/nexar-linux-arm64"
      sha256 "1cf8d35755eee98975342a3eaaef2d6efd056b7767ecb616ce250b413c775787"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
