class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://platform.corp.nexars.ai"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.1.1/nexar-darwin-amd64"
      sha256 "84c19d3b84f531d3e32636ef7ebdcd324892786c7e956b29bbdd284aed5f9896"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.1.1/nexar-darwin-arm64"
      sha256 "746330ff20b48f7da8de8b5c12e8e7bc6b1b6bc54f5ba5fe8f8d7516f435bd48"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.1.1/nexar-linux-amd64"
      sha256 "1e5ddc830644b42ce6e76476166acd7584501d45a5e60f10e0a56bc243f390b9"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
