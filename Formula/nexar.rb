class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://platform.corp.nexars.ai"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.0.0/nexar-darwin-amd64"
      sha256 "88c1537bec10aa38d1f2994789759349ffe8e1a00a1d94280ca90da349d47cc9"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.0.0/nexar-darwin-arm64"
      sha256 "c63dc2ce92993372c4fe125ee096b7b49925055bf7ed27e3e6e351a44c309a58"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.0.0/nexar-linux-amd64"
      sha256 "3ba0cbec2d2d623ab7af1da1ec4ecc9c2284105097359f7065dcb4f550fcadf2"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
