class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.7.0/nexar-darwin-amd64"
      sha256 "96b3682f6e456160ab11ca4ed68e894fb26f6a85fe50222ed60629b97785da62"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.7.0/nexar-darwin-arm64"
      sha256 "69e0d97d7c2baa8a62d97c74f523de93a8e66ee03b5427f1fd1972e42d5da550"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.7.0/nexar-linux-amd64"
      sha256 "4186866f83d56cd3fb6dfbc651bba232cd2996de671ad6f9cc8e234935180095"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.7.0/nexar-linux-arm64"
      sha256 "432298f376a06fe2170c614979fc54e08dccf6eb826a3109c72b87ddbc248059"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
