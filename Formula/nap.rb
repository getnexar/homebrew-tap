class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.0/nap-darwin-amd64"
      sha256 "6a3a156d4dfe6c78712404dfef85c04cbfbcc365de2bee33ba6b970150c76f94"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.0/nap-darwin-arm64"
      sha256 "87ff1fedde5781c0745957e266953cc369e4fca2a5b416a05e952afc594ffde5"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.0/nap-linux-amd64"
      sha256 "71086648988b02015695f536daeba759bb958b3f575d282d1ee3df74632fd48a"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.0/nap-linux-arm64"
      sha256 "e245a969c1cc334c3d8f7c2b0e636c7a265d1eeb9851a048c5316c80d928cdb9"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
