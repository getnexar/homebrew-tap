class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.9.1/nexar-darwin-amd64"
      sha256 "8dcdc33fa3691b0959fbe461ededa052580a9ecf16a85f2c18372f30e7e74f14"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.9.1/nexar-darwin-arm64"
      sha256 "fa3f125d4b16c70db21e33692f49f3c9280c73a1e39db5a28a24cb4e1f9c6873"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.9.1/nexar-linux-amd64"
      sha256 "2faef315cafc624f0e5ec21c984a7e45ad8723edf83a0905c849ddc055e46cd7"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.9.1/nexar-linux-arm64"
      sha256 "337d766694f7edb8e204671d0205b8ec52d998974141a595c193b2b0336f3e8e"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
