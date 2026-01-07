class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.5/nap-darwin-amd64"
      sha256 "fa19f69c7714150405c9d4503f7b2d53eb4fe4eef44d8fe87ca5ceb822fe21b3"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.5/nap-darwin-arm64"
      sha256 "182055f8d542a6ab41ab5f5f2796f7f5611648b5de9fc111ce8406a5706d8c1b"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.5/nap-linux-amd64"
      sha256 "6eec92afaeb5d7ccbcdf19176290bbbfbe6b62b8bbedbcecec9b0da0ef7c19b7"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.5/nap-linux-arm64"
      sha256 "214d55371f1d5e54d0c5adb0d7dfe59c358ed16b58784f48fc548c5b903ae232"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
