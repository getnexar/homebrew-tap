class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://platform.corp.nexars.ai"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.1.0/nexar-darwin-amd64"
      sha256 "62aa2d9050aff372502ef09e2b28c773452ae857091630f7e5580bf1b1844baa"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.1.0/nexar-darwin-arm64"
      sha256 "82cff9b2411765c032e09e93f19e987438301e189da8754b170dabab9586a45f"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.1.0/nexar-linux-amd64"
      sha256 "cea8a4d17b127010ca5072ffa887920228b2d0e435a9140fc4bb4e6f22871780"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.1.0/nexar-linux-arm64"
      sha256 "ac563727c4ed18ce8e1a914f8a84aa1afe86475adef9edf28237020179d4b652"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
