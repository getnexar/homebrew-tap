class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.2/nexar-darwin-amd64"
      sha256 "610c56fa904d70e0d548de31cf754669b2c38c2e8e70379ea8c0624618d64b6c"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.2/nexar-darwin-arm64"
      sha256 "fb41dbb7a7e4cfdbfe922066958eec32bd926a9dc7971df042d960bf62058ffa"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.2/nexar-linux-amd64"
      sha256 "b41a4f4ae952e2df95a31a14b6e6ef9e817349a3e630519c9d9e25b10a35c462"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.2/nexar-linux-arm64"
      sha256 "ae904b1afd837bbbbdc1424a0b338269cad75f064d2d399ee0c2ca7e93ef28c6"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
