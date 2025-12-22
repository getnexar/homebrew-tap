class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.9.2/nexar-darwin-amd64"
      sha256 "145286d58ef13d62cf614a36f5253b1b8f226671a55d3af489010d68ea20a57f"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.9.2/nexar-darwin-arm64"
      sha256 "f3c910f5bd728da91b25da6379686dead54ef407b9cf566ad0e98687fc53f58d"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.9.2/nexar-linux-amd64"
      sha256 "7d2f9f12d03d5cbb6aefb6eb982ea6f97a9c129dc1c179d9169853cb87feca27"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.9.2/nexar-linux-arm64"
      sha256 "e9a3c962b9cf1b05bf743ecaf2a07d8b3399dcbb56644d5237b2cb6c63521fd4"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
