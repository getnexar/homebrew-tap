class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.4/nexar-darwin-amd64"
      sha256 "4eb33b4efc521efb86adbe27012a506e18405724abf51328585f70ca22da048f"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.4/nexar-darwin-arm64"
      sha256 "64166941f49b7269f952e1d3701fc037a0d200b1d14040b174e806f596fea4d5"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.4/nexar-linux-amd64"
      sha256 "abdfc78bedca50608341a589af61e49e5a1ca6018c2b741e9f4017633bc9ee54"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.2.4/nexar-linux-arm64"
      sha256 "c44e8f305caa2bb4955289051d2ac3ed0dc1e8bf602bba7b16e9e4b1b11d0f85"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
