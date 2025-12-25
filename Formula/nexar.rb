class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-darwin-amd64"
      sha256 "d76520970676c930a7c06ba29ce2d831a1767d9d3e3a950576c95d0f1e5e05ac"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-darwin-arm64"
      sha256 "d08706aaac41653be26e87db33d9287caea828035daad23ff8d9515194cd07b6"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-linux-amd64"
      sha256 "2c3dc43ea9c92c8b403752b74de343efbb8ec3bdd529ba5b3f9314c332bf34d4"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-linux-arm64"
      sha256 "a3fd7e8a8fe3ff51ed899f8cce2d56f42f3739e0472410712e4ac18583831562"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
