class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.15.0/nexar-darwin-amd64"
      sha256 "e98a2e71d5a86021709d6206f2d083558c8aa0bd9386bc6719b152c6c2f0be16"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.15.0/nexar-darwin-arm64"
      sha256 "e4ab32892d4d6a831f68505771c7f17b3c81c529ae39b09cd068d5781f329518"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.15.0/nexar-linux-amd64"
      sha256 "02bc6e94e6d301f3078b7b8733c21b8b53e06a170a51c8b2f44ac2274b605a23"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.15.0/nexar-linux-arm64"
      sha256 "aa1fdc9fd118483593bf2adb206ccff9c08b3c63747ba07857a4ed7167776d1a"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
