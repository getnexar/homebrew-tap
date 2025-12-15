class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.5.1/nexar-darwin-amd64"
      sha256 "27f30c9ae1f784d3e55b491de2f05421c701cfcc9e7a9f9bb4a97e161e2c6b85"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.5.1/nexar-darwin-arm64"
      sha256 "0f4cc91d898f2eb0d08854a166d695d2ca15666b14f6945110caa3b9389252c3"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.5.1/nexar-linux-amd64"
      sha256 "d8544108e18d7b054adc6c494c4ba28e655fb8d22719b836ffde659ac8b05d58"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.5.1/nexar-linux-arm64"
      sha256 "702cdb2808dbbb0e5e9b16fc4f5e3726ed3b7ea3902bf96d04d4f581024250d8"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
