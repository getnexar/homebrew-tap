class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.6/nap-darwin-amd64"
      sha256 "0019b2fc49981f62c0a639bb0df5255f29d2f6d8c794883d7dce0bac6efd8f64"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.6/nap-darwin-arm64"
      sha256 "b35324c95275c9d0747ff4af3e3899c16dae7a6886e3571b743e80b6d5e5a76d"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.6/nap-linux-amd64"
      sha256 "8f21c05fc53a9e24d97bee3dd388507698aa31ab1f02d0726f2424d783cb8660"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.6/nap-linux-arm64"
      sha256 "d2172eb5d11bcb2b38b48ae769a0b8461fec0e08c98ccae9c24b3c6dfb56b797"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
