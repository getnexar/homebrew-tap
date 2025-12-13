class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://platform.corp.nexars.ai"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.1.0/nexar-darwin-amd64"
      sha256 "baa3aba7eabfd7c42d2dee96c9043c7e81ce29c4e7cee8ce1ab817e73da779db"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.1.0/nexar-darwin-arm64"
      sha256 "47d2951ccf801f4d010331efed435d88ada7def3be672f1ecf9536ee134aefbd"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.1.0/nexar-linux-amd64"
      sha256 "08721eaf83ee43d17f9bca945151edcc2966ad70f15909992744728a757d8a27"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
