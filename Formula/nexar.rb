class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.3/nexar-darwin-amd64"
      sha256 "908a87bf8434f1f3fb999f99b6fb9dc8ac2b0fdd71c061c0de9c14fee8e30a3f"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.3/nexar-darwin-arm64"
      sha256 "fb9918836cfb2215a4670153bc15a94e001c9d8becaa3a50fc157f84de0f32fa"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.3/nexar-linux-amd64"
      sha256 "95a081b0947cc8633bc9023e04a2eef76422633cda2cef5eed9d56f0919c1d5b"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.3/nexar-linux-arm64"
      sha256 "e7782ccd3c5db876edc866516b3967ecb7139feef4b92d6519ba02d7dbd17509"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
