class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.12/nap-darwin-amd64"
      sha256 "d279142cdb2d5a5c80a97d82524d4468f73f2af709e71f7be9e7a75b239edbb9"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.12/nap-darwin-arm64"
      sha256 "ce71cb3b9ddacf5965879874a0bb635ed796459f9cc764d1d8812a92652ee22c"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.12/nap-linux-amd64"
      sha256 "5379143e623eaa7edc2c829f9b08e2816cd4abeb883b94ebdf56872f9ad61b7d"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.12/nap-linux-arm64"
      sha256 "947d09c5c5b72a93270479d5b63898346570a109e5d72c9f9351129c6d130b84"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
