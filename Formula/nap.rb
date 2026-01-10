class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.1/nap-darwin-amd64"
      sha256 "9657ac0314a069b654398eb0540d9c6a2677e1bf441e36a2d2707277bd7bfcde"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.1/nap-darwin-arm64"
      sha256 "e1d82221af3c624ac9c57b26a4f2e72912c6af06ef8cc4babb24ba0a18f5c2a0"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.1/nap-linux-amd64"
      sha256 "38e011fa550d795a3260f699bbc0ddebdbbd4f89a33eb7bd0eecdcea5b8fe31b"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.1/nap-linux-arm64"
      sha256 "03714bdfbfb4de822ea05bea726246913f1a4b6894bd6a57995431b2a66e8fb3"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
