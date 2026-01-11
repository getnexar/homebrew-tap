class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.17/nap-darwin-amd64"
      sha256 "999e21e6c7e685a1a8de6b6d51983ccf767bd29653e4a5901ad341205f1f5ede"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.17/nap-darwin-arm64"
      sha256 "2e3bb4626460ada6c6d6e0148effb594c1d0fbe2d8d56d6998bf08442c85ec06"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.17/nap-linux-amd64"
      sha256 "671575475b58f605691d23aa9241fbe28678273d5be4580cae98df126cc69136"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.17/nap-linux-arm64"
      sha256 "54d65fae11618e30c1457582bb12268eeaa246d5adeb78025f8944c4af87cf2b"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
