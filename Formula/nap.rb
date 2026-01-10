class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.9/nap-darwin-amd64"
      sha256 "0600ff73160734f7c7dee585ba1cc8fb43410d882e2a7e97ed58bf2ad9e0706a"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.9/nap-darwin-arm64"
      sha256 "f8793996ed9011d6dda23f67b2fd38e529fecb2b4e9c086fbf6b62c8fa9408b8"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.9/nap-linux-amd64"
      sha256 "de71404811307898771911aeca1254aeec328164278bee22167e9862cc58ac1b"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.9/nap-linux-arm64"
      sha256 "ef671fb8485462f45045e6fa4ea75194b4a9b4c0eccdbb84fb6c02b536da005d"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
