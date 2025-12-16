class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.8.2/nexar-darwin-amd64"
      sha256 "8f73944ea588567f7660e511259cba35cf55753735d6ab00d6b76f31cc74cd17"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.8.2/nexar-darwin-arm64"
      sha256 "71d01d292d4817cc3a891a9455ca402b7ef1009b1cb7d1ad61ee03aa389984d5"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.8.2/nexar-linux-amd64"
      sha256 "2efb7d94e4d8b1d4862d862c9bab82ddc5656f0401f335d88c1d05b091936063"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.8.2/nexar-linux-arm64"
      sha256 "53c60a99e4a3627ce9759020229cad17eb47bc2bdacc8d050abf965c6cf5d0fb"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
