class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.4/nap-darwin-amd64"
      sha256 "cda25d22d5b43c93aee2b9c2848fe4daeb20923ae5642166593a65886cb57a66"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.4/nap-darwin-arm64"
      sha256 "79255d3df803e3434646b9badca7754d225f72c762615a39d0b34d017efcb2c7"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.4/nap-linux-amd64"
      sha256 "4ad314a29e48858872f453fb7c07fe543e9e745bd4149d9f6ae65ac7ac980275"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.4/nap-linux-arm64"
      sha256 "a8e046a78aad97154025432ccc6c587539d1ce459569398a41ca3e63db36e58d"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
