class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.7.2/nexar-darwin-amd64"
      sha256 "ed276448a6223d5fd292645cc0b7fb98c39d6f751fc2e0cd0d1a41df115ab180"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.7.2/nexar-darwin-arm64"
      sha256 "c97a613204495042eb5c4c148decd694055312a0a607953a65ce6d2dea40f58f"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.7.2/nexar-linux-amd64"
      sha256 "918f656b7d2df8ded966cac6ed796c4632ab76bda0c2a5501dfcc2e77878a8ad"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.7.2/nexar-linux-arm64"
      sha256 "d2881cececa8461d78354307b4c2f65abe71b4d2b2dcd320f6827eb2fc4951c5"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
