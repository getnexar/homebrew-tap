class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.13/nap-darwin-amd64"
      sha256 "1ab4689c78fcb40c42502843160727d0ef1bc70efa9a4a7d02f372451b1b9284"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.13/nap-darwin-arm64"
      sha256 "c9b82a7640cf4e8830a8d612425b62de2a69db66751aa0347af8e3f2ef8faabd"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.13/nap-linux-amd64"
      sha256 "92d65c43eb2ef4b60930de27711bee072b9d268b6cff3d648c7919aa0efb351d"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.13/nap-linux-arm64"
      sha256 "c56e1fa1004db5c1d7605e316142397025180ec698c6f1845d6a9e07825edacf"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
