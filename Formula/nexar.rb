class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.4.1/nexar-darwin-amd64"
      sha256 "54723b5df246435570b4bc73a42869fcfd020a60d5e4940d7c6193d409d83072"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.4.1/nexar-darwin-arm64"
      sha256 "d7a7a418b43fbcdb2b184bb069b98ace3c601b3edcb952a3801e4aa0326ff037"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.4.1/nexar-linux-amd64"
      sha256 "99a677cc2ea8c4e84d2762e72c4d8b78cb25abf64face683107449b0b067f13b"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.4.1/nexar-linux-arm64"
      sha256 "440bfc0d8650b1d3421ab668ddf95d0cd7e1fe7220fbd29090a0ad684dcecf51"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
