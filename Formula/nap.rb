class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.7/nap-darwin-amd64"
      sha256 "ba554d7221f9a0bdcc2bad2231db44c0fc07a7c937bd1800740d459fd42a4046"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.7/nap-darwin-arm64"
      sha256 "eebf6cb3de5d3eecc2cf06d52fd3f503569f194b0d57c00c14c8250e19d58ec3"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.7/nap-linux-amd64"
      sha256 "44d1cc54a72f878930019057f5ef62bb77efa465a960a713276de147a9bb17cf"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.7/nap-linux-arm64"
      sha256 "81115bf66da0b933c8fdfcf0ab70719434e46fa5f0044e5b6efea5840cd6ae3e"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
