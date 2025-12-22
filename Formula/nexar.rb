class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.9.2/nexar-darwin-amd64"
      sha256 "f0b58dc9f7567ee6fa6b3fa7b3afad467c7274a82ef8450971ebbaeb7ab5dd3c"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.9.2/nexar-darwin-arm64"
      sha256 "1035d619d0822941b3f7903eb70a7342502b9a2f66e63ff7625c85c406e128c1"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.9.2/nexar-linux-amd64"
      sha256 "9a6ca2a6e9b1c6cd278d3b97dcc62a281bfa06969d2f77bada08f70847748742"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.9.2/nexar-linux-arm64"
      sha256 "0010bc3d48867477a09e9007fd07307cf568c9910022b94216a0f5090f70e161"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
