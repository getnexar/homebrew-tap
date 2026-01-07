class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.4/nexar-darwin-amd64"
      sha256 "cae46b66682051c352d4c0a8e13c0cf8722226994b0e4b395bec4e0386635df1"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.4/nexar-darwin-arm64"
      sha256 "7b0a62f2d069193364f440eb584e9600fc2b1a52b82b4341069bd6a6d966d279"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.4/nexar-linux-amd64"
      sha256 "94fb81ae3e9334d347b85701e722cf077ad4dee366882c07668700ce09d99b88"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.4/nexar-linux-arm64"
      sha256 "bb41b038508f55b5dbb744543d6c2e5a4bb2f1e7ea714cb91f9fb20ea3d4c84e"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
