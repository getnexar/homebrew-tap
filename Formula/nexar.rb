class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.3/nexar-darwin-amd64"
      sha256 "1692a28869329b85a685c7cad3a0437373ac0fa8b3686263e09a7100833155ad"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.3/nexar-darwin-arm64"
      sha256 "d27fa41ad26b8837ff0fe550baa0ccaa9f5515b485a276e11eff35217ac0f71e"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.3/nexar-linux-amd64"
      sha256 "cf5972fbae23c7acb59bf9f18441c9c49f87b42d331c42cccad20315c3703d50"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.3/nexar-linux-arm64"
      sha256 "0698e7a82adc34667c6927ea33a4613c1bb0b9d4a9ea01900e7e2c7ba7240f74"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
