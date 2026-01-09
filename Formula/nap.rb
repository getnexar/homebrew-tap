class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.5/nap-darwin-amd64"
      sha256 "62fd7dadc53856301870e734cd3f902fc78fca3ddead23efdbb0c837611e800b"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.5/nap-darwin-arm64"
      sha256 "a5796d2a8d9b209f6a73919002d98d974eebbe3a6eeca69bacc2388dc0055a85"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.5/nap-linux-amd64"
      sha256 "1900a045b45c60cdefac12c61e0940b6d3be294abfbd542a4dc369dd4344de3f"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.5/nap-linux-arm64"
      sha256 "4ce480bd68f3ffa10431ea1560c2564d4e133d5aca01d9cd0e1d7184c354a7c9"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
