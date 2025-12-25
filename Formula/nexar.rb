class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-darwin-amd64"
      sha256 "6206f9c74aef17dac3ca175136a0095ccea7bcc02e722423c6c7b049d09eca58"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-darwin-arm64"
      sha256 "d6b85f9777690c8454812c30c252c3dc64b80562f511ab33947041f09ead5413"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-linux-amd64"
      sha256 "a30e4eeca36b96506c7031b7aa5c46d4be902786dfffe05d7fcb24baba2f96e7"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-linux-arm64"
      sha256 "a25db38d549a74f1ee2a08bfb308ecf1527bd0b9606549fe2630d54e19019423"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
