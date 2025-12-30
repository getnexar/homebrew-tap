class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.14.0/nexar-darwin-amd64"
      sha256 "bf2714cd1cfd52b2ab2fcc40f9c8307164625182b3e45934e0cc6fd3ee2a6fd0"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.14.0/nexar-darwin-arm64"
      sha256 "90e41162db2bcd2ccd183a8b36ce9dffac43bb34151ab1252fa55acc033527d9"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.14.0/nexar-linux-amd64"
      sha256 "4d6a25596799ecb257d1a6415804617ff59b5afd64971d72d6b20ea249947ca0"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.14.0/nexar-linux-arm64"
      sha256 "d00fd38a59ca149af288aef3ac592fe9b5fb0ae1fc2330ebc371a4702df188ec"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
