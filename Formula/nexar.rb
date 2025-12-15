class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.6.1/nexar-darwin-amd64"
      sha256 "9cec355284baae58c8b06fd707b829e6ddea3b64d87374925958c759f503c75b"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.6.1/nexar-darwin-arm64"
      sha256 "f63aa98055b739e67201e9d65e06d6d3dd377456b527c38363802d5bb86ac142"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.6.1/nexar-linux-amd64"
      sha256 "cb8a2febdd66e2c5479aaf22fd0598313684515dd78b729a93f87117df2a0cac"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.6.1/nexar-linux-arm64"
      sha256 "f6091e6a35022ff4f5648eb7481d4ae4d211110a6aadecbc230a9530e286f90d"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
