class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.4.0/nexar-darwin-amd64"
      sha256 "15b6d3769b2ca97461fdde5eacdd568f2b51c8f7eb56911e8b275bd540ed7059"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.4.0/nexar-darwin-arm64"
      sha256 "5e64d453bd13ed078dbde656ecb28f0184244e7f3828a8b690b2afa173059668"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.4.0/nexar-linux-amd64"
      sha256 "80563572372730742691fa5d314ca7ca5c71ffbb9111cdcc785a29915a555bef"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.4.0/nexar-linux-arm64"
      sha256 "0c5355881ab7b7fa8f420303be04935ead228a197f0bec777e7ac840c803bcc6"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
