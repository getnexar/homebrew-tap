class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.13.0/nexar-darwin-amd64"
      sha256 "d3a3c1551a10e56e71c526cdcd3e305650667f0be1efa1b3e259e244a002672d"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.13.0/nexar-darwin-arm64"
      sha256 "075905b842c3147e2a2f97113f2971bb7aea84b20f1cba266cfb3525afcc941a"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.13.0/nexar-linux-amd64"
      sha256 "a35648748f0227ff8bf768e5736a8de17a3ba421b8d1ee44da668726081c0560"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.13.0/nexar-linux-arm64"
      sha256 "a64c8f8ee13291f2773920f292dff1b2a4b2284302f277b899f43950dbbfcf91"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
