class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.1/nexar-darwin-amd64"
      sha256 "9850420fe6837050efaf70a0eb2a25f07fcf912d53e9033a88b6a93fccb89814"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.1/nexar-darwin-arm64"
      sha256 "db63c932368ac933aa92d84b3a4cf27d4ad9a5478b38eb8485d755d6e0b2c7a0"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.1/nexar-linux-amd64"
      sha256 "347e344c80d01c72850fe2af1195370cab2b1b37334cdaa577eaf387234b78f0"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.3.1/nexar-linux-arm64"
      sha256 "90fd0857e14a90e7d2a3ebc52f973fc36b65fcc209698dc882a4069f1f127bcf"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
