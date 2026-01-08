class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.9/nap-darwin-amd64"
      sha256 "7b5bb5742f42cd04ce91c204221dbba90aa30024f471c1e4195bfd092aa8867f"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.9/nap-darwin-arm64"
      sha256 "7f78f1fb6763e96af546af6b0d0f87a8a0b838c9f4c29e0fcdf75c076033c294"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.9/nap-linux-amd64"
      sha256 "14b078e5c2045a21289a36849784506ce4b06e2c13346fc6dbbe7946d01e4d75"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.9/nap-linux-arm64"
      sha256 "18e5ec48e4200a31399b2697cbe52f280a7ebc4d1f600bb9f70d44ecfd38e6f6"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
