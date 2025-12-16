class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.7.3/nexar-darwin-amd64"
      sha256 "5840cf415d3d7f320cccfaa9dc5194d18983add0dbe5f6cf4564f903c8caeb01"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.7.3/nexar-darwin-arm64"
      sha256 "f5516705bf658c644e1449fe5275970df73a3a8e5858e6cb40dd6361de5b5236"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.7.3/nexar-linux-amd64"
      sha256 "14e300858ef77ae791f21dec412dcad50c7507eb4bdedd51eab47077ef8f7651"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.7.3/nexar-linux-arm64"
      sha256 "ecab7bb11517e9d3f593d1c9430eccf1ede5f8f08062e77d434e31b295e1cbc5"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
