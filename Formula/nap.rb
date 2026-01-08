class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.0/nap-darwin-amd64"
      sha256 "1f2192b3adafd3c5bbd22f858485ffe5d64aa991e7b71c04f31cbabf6d029532"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.0/nap-darwin-arm64"
      sha256 "efc62f7639fc4cbeab1d5a56d9f163739ebaaff5424b1f0922f964209885cd4f"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.0/nap-linux-amd64"
      sha256 "0692beb8f7374f517db0e2760ecdb12d7530b23df3335e757301ff148b31a4c7"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.0/nap-linux-arm64"
      sha256 "2abe51bd8a4b54f5ca5238d3d134a1ae3048cd2064f5fd96c8d4fb65e56665ca"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
