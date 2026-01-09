class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.2.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.10/nap-darwin-amd64"
      sha256 "6a8bfb4c0408bab18019e146ca89e5af14eccff09b92e30b8b349b72fc562411"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.10/nap-darwin-arm64"
      sha256 "de106154cfca183c5702bf9878e56000f4a6ae01af25153dbff902064692a544"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.10/nap-linux-amd64"
      sha256 "abb4f9327db71b32ac29b039c850f73b8b4951509021105931161397f6675015"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.10/nap-linux-arm64"
      sha256 "c4bcd86ba4d2311fa510bb0c29cfe1920c80156e45d1fa1f7d32d1737d580708"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
