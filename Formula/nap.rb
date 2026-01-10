class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.14/nap-darwin-amd64"
      sha256 "330eec654d50a041efe9487bb68db1b2b7bf99ae8a0407b65b078e6f77121f00"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.14/nap-darwin-arm64"
      sha256 "957e8335875bf595136e9f04ef4e09cf9c74b96793f13b6c6c65ca6b644c2f69"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.14/nap-linux-amd64"
      sha256 "cf05a40ff8cd791b802e05e6f4d22a82db549b6200ec1a8faf5d14baf07086c6"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.14/nap-linux-arm64"
      sha256 "58cd0fc3d9536787fe91cc8cd7d15cbd1d7613bc4d377939d012969249a97616"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
