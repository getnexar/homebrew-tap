class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.2/nap-darwin-amd64"
      sha256 "f3dad4f4f107d36ac820553c6441626084c6bc7b928812d65cc1c5939065cc28"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.2/nap-darwin-arm64"
      sha256 "4b45a3a7cb8bfd5cee36593dd88958a61473fa36b2701caef9bab9b5f81658bb"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.2/nap-linux-amd64"
      sha256 "a8a43758e5817e55197076470f4398dbe17c04f5b5fef146280eaa2daa8b45b8"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.2/nap-linux-arm64"
      sha256 "c05248e5fe46fb75072c2fda2ce39c2dd286be821c9f09020f2391984889ed8f"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
