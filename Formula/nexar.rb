class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.4.1/nexar-darwin-amd64"
      sha256 "37de1a94a5cc2d6ec9136bed22273cfa55cd1630ce80ecbba5a608435fba78e8"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.4.1/nexar-darwin-arm64"
      sha256 "b0c28517520acc608c8b96c31ec9b2b289922f3f25f1d2c61311731444c64a24"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.4.1/nexar-linux-amd64"
      sha256 "6ea9bbd46a3113ccc45c299f24ad284691156cb3db10f5affe8eb5d2a4818b67"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.4.1/nexar-linux-arm64"
      sha256 "54bed8f112af1fd2bfbfa806d7009a473c0f518faf2fbea581f30fa937052d14"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
