class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.8.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.8.3/nexar-darwin-amd64"
      sha256 "35c682685080ed8daa371fddf1731940ac96ccc35f564db479e2f2dab88ecb21"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.8.3/nexar-darwin-arm64"
      sha256 "c5748d182bcd30aa5260894ff7b08d62b9a2b8e5f442c3627b96e2f954260eaa"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.8.3/nexar-linux-amd64"
      sha256 "75641ab8c5dd272cdfc0b39585543dfb8d3a5e90240914311c5aacc9c48714bc"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.8.3/nexar-linux-arm64"
      sha256 "c533415b8e365bca334b6bd6a93b57906f08f96fa76c4f65edc9820087e86fc2"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
