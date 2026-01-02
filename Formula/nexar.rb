class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.1/nexar-darwin-amd64"
      sha256 "2325863e0d1fba2145e2073ff8f019298c98bd2ef454c54f76322e4b9b9765a8"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.1/nexar-darwin-arm64"
      sha256 "94e3d7055c2b549d239d3ea68d1191106c4a62900d70959c4ca82e6f724f4c46"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.1/nexar-linux-amd64"
      sha256 "85f391fc11dc4fab06e4ea513aa2591919776b13ac2ec27085096f2c7f76504a"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.1/nexar-linux-arm64"
      sha256 "f45faf467834070cac7224a5ef33a4b8432603b856603e74b9b874b8d2cf213a"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
