class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://platform.corp.nexars.ai"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.3.0/nexar-darwin-amd64"
      sha256 "0f1e4eefb93363b5365ba54d4c7f61f9e6acc991e7b06ca013cd4f52a158589f"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.3.0/nexar-darwin-arm64"
      sha256 "227d5a92b4bf5b95e2dc43ef19adb476de2ae2e496d1dfc07c139f9675cf2b75"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.3.0/nexar-linux-amd64"
      sha256 "7664382a1c6f044821c74f727501fd92c4b2dfbbc0e0e5e2458a2b59802dc799"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.3.0/nexar-linux-arm64"
      sha256 "f00848c24a680b5443045be98a4d0fea13f15ad757e6ad0a908c3bb65e52e399"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
