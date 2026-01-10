class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.8/nap-darwin-amd64"
      sha256 "b4fb1ad5e8c0cf9c0781e8c23d62b724d2ec213f9b395a7e06d3a40e16a954ea"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.8/nap-darwin-arm64"
      sha256 "32448682f93584bb2a678cb67be758fe38780d0b0fc8b9c272935153cef0e085"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.8/nap-linux-amd64"
      sha256 "7265c818dee012fbcf3dcbef98cf1e4edbcdcc76c68c073dc7cfb87e8cc0c2c7"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.8/nap-linux-arm64"
      sha256 "0f447299437943f1fbbfca6cf931aec96520b03622f14c4a9294544addfafbbe"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
