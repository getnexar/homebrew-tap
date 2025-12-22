class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.9.0/nexar-darwin-amd64"
      sha256 "4b085606abcf34c24ac4d019794af81e1fa7bf250e1ab0b47d37c77b1d2d5e47"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.9.0/nexar-darwin-arm64"
      sha256 "85182c2fdf6c66d4226f3f6c2489f00ba803a28f7a04cfa1b792b1369e5244a4"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.9.0/nexar-linux-amd64"
      sha256 "c93639f6d57c565659b2929620d3e997141319a5ea0c5df178a71a7afb34f50b"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.9.0/nexar-linux-arm64"
      sha256 "d567ca7b9174e1f9c27c272e5c904c280e75121c833d826afd885b0bc5000d60"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
