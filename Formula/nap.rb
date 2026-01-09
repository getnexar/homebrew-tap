class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.1/nap-darwin-amd64"
      sha256 "a6bced3fe074106eb6e31ab8d989adff307f27c003dc75b78ebf99f15672764d"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.1/nap-darwin-arm64"
      sha256 "b2cd4ba317cee0e1e8cbd28fe9f9cea7a5dd4ca5495926736374c15494a2a955"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.1/nap-linux-amd64"
      sha256 "77a7f4a4173f5b1a43651b9d835b8cf88b10438fe0b196e72180c70868c015f6"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.1/nap-linux-arm64"
      sha256 "0327d5829f057759459332aad6f0b091accf66831826371f8656252210208b94"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
