class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.2/nexar-darwin-amd64"
      sha256 "2f2faaf17bee25ce69097d13d7386cbde263c2c3fabbf7ad8d85c76200f247e3"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.2/nexar-darwin-arm64"
      sha256 "0608fa68a21a127d030a5f44f7b7e30efefb80402ff790b3abafd7e4423b77f9"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.2/nexar-linux-amd64"
      sha256 "fd1addfd484376d34366a3564d9bd0a326b2e9ed76cd286a19e9858ef8ad87b0"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.2/nexar-linux-arm64"
      sha256 "6f02eabc07cc14d0ea1c6fe03f50d32c4e6e2bcbbe08c6df030a1fbd8ebfe73e"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
