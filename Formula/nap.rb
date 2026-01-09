class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.2/nap-darwin-amd64"
      sha256 "bd3aefdd6be127ee736191c64d993edef6a364fdfbbc4c2b48a2cce315c5b052"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.2/nap-darwin-arm64"
      sha256 "4d0ada9b7d6bf468e446d307071c439f844a1b501a0bbc21ba68577fd0d34605"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.2/nap-linux-amd64"
      sha256 "2de11399d3de4ad5d25d109f3452ea61c21d1c60d0ab9c28b39eb0f098302c8d"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.2/nap-linux-arm64"
      sha256 "f5cadade1e1a562e0be4b6f2cf5ea75b5b5ba680d4f266d995475488362bc970"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
