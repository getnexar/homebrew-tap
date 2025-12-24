class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.11.0/nexar-darwin-amd64"
      sha256 "d052c45cb0714460b25eb2c78dad743ef0f2be4ce0b8359afe499d7f773b4264"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.11.0/nexar-darwin-arm64"
      sha256 "10089206e36fc023b24ba588a6eb525db8552f7a105eaccdf845e259650a3408"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.11.0/nexar-linux-amd64"
      sha256 "198117eeb64d11cf572cb7f9985b85a407c3e385a7f185efe940fe4393b25f08"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.11.0/nexar-linux-arm64"
      sha256 "3ba32376b5926af57b830d798d795e13e88055c7a07d018277bf486d18e9724c"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
