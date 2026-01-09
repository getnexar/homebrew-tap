class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.2.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.9/nap-darwin-amd64"
      sha256 "59418da3a651fe1d7286193426b23ae0db7effb68b122a2c15308cf22a1b3ff1"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.9/nap-darwin-arm64"
      sha256 "0df1c217da5f0ff2617d5b6593875ac3493a3cb23bc9687877d883474bb472bf"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.9/nap-linux-amd64"
      sha256 "d941577c81ae90f3bf949b40c857a32f5d5c11a6f73c3d5a962e08128487748e"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.9/nap-linux-arm64"
      sha256 "deccb82dec75d4cfc6bfcb438af72470ffb7b303bddb6125c9b6beac639728be"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
