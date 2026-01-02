class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.0/nexar-darwin-amd64"
      sha256 "d104debbfa7b3fc268b34a4535438bf032db4aa2da375aef1168d4b53d8ece82"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.0/nexar-darwin-arm64"
      sha256 "198d1cd8be1ba3ccc3a19975da39aae9afffd275c5013fa858eb3a11e1462e02"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.0/nexar-linux-amd64"
      sha256 "dd0978bfc265729c43b73ad7c9f6373bdf34b2ad09311b34b7e86179a37d1e51"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.0/nexar-linux-arm64"
      sha256 "84c7115d5cd9bcaa051e007c2f91c157fd16cc7b3f0f6315810f6300eaa7c493"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
