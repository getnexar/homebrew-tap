class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://platform.corp.nexars.ai"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.2.1/nexar-darwin-amd64"
      sha256 "1dc87957dfb1a663e31c3fd26a6af97323f2a21a21c989a173f22ea8f2dbb04c"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.2.1/nexar-darwin-arm64"
      sha256 "5236fd34c756bc0baeb2b68cd72cfcbd70cb1af405d01326535fdf28b234c3e3"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.2.1/nexar-linux-amd64"
      sha256 "71b3b280f2131a6361bc12831c82b1fec01a12cfb498fa3a264fc2038015d911"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.2.1/nexar-linux-arm64"
      sha256 "1b63ec9610d9865f549b4e9e5fe1837d7548c9ef0cc49b6e4e007c3d6a61d55e"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
