class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.8/nap-darwin-amd64"
      sha256 "6fcb007f4f38f606c7747c0cd78958bfa8279a8a7be79247b84126cfc2efbd06"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.8/nap-darwin-arm64"
      sha256 "fe6c602692dd7cbf4580fb132804251cf06294831f2f3df438fce754126c1734"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.8/nap-linux-amd64"
      sha256 "2fb698a91af525401b8af450225570733d85f5e0544be0b987d9d9b71af3058a"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.8/nap-linux-arm64"
      sha256 "0b49d0fc69f34a377aef89845d297b8b88f6afdcfbdd7cc98244f9fb022cce0e"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
