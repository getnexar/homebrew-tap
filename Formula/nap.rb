class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.5/nap-darwin-amd64"
      sha256 "2024b655680aa1234f69160b5d1ee27bf8d009d64d2f76ded52c19ad8265f21a"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.5/nap-darwin-arm64"
      sha256 "5b3530d06bafd8b25f5843dc9389b69cdd5d19b8fcd967c97adc1f91647b99da"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.5/nap-linux-amd64"
      sha256 "ae79c04faffe4d28e6150911df9cb2626628c45725afd6256813a5eb062b6f97"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.5/nap-linux-arm64"
      sha256 "5b3a08c93df6b5d496212549b0f8293cae670406ca4965528c1778ab2116bcfd"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
