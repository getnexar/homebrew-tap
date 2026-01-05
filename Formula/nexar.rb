class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.0/nexar-darwin-amd64"
      sha256 "0472b9e09f8b0a23f5abeb2fe5963c481c8277c82c7bbd7bee4c161499d1a038"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.0/nexar-darwin-arm64"
      sha256 "2b9913cf2b0e152060085068194b561efb6693b7c0aaac0ee4c078231031e223"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.0/nexar-linux-amd64"
      sha256 "eb7e8513e01ecfec6eede5845dc56769c161afbe33702cbbcb7572142308e002"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.0/nexar-linux-arm64"
      sha256 "bbeca1974fc9e908d16838c117fd50c783bfbe8f26be42474d4867a25456e466"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
