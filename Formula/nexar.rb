class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.8.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.8.3/nexar-darwin-amd64"
      sha256 "947407a3479c90c1d43c9e8b3e056f5502594423c6b12ee114883a6083d23925"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.8.3/nexar-darwin-arm64"
      sha256 "2cd5e57f4f7dff5f773781b53a19a409f67eb5a6eff3561b552bce644db80207"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.8.3/nexar-linux-amd64"
      sha256 "b80054c79598353fe4e69e1b276ea8408659599b4dab7232d0ea351844eb4ae1"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.8.3/nexar-linux-arm64"
      sha256 "34aa8c06035f4ab352d4c3cf47d8ff3b9645012ba5e732a536c3bffc7b85933a"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
