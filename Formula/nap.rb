class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.7/nap-darwin-amd64"
      sha256 "00ea759be049fa037b32b72f7c0346b3068eb53511064cb592a520422f505924"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.7/nap-darwin-arm64"
      sha256 "b31093a60fc984d0deaad8de0253115f30839e32a17687f35492762d9406eeaf"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.7/nap-linux-amd64"
      sha256 "bbcf5b388d4e3cbf9fabbb685d92e28a82fa6f86498068ec58d513eac3442aae"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.7/nap-linux-arm64"
      sha256 "ea087bd72a3c6d89306133b58f3183874f2f26fe0284ce9620739468a5c14481"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
