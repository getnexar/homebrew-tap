class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.2.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.11/nap-darwin-amd64"
      sha256 "9dc8955f8a0c08ea166c706118137286d38db0094ac1293d488d9c71fbf7687d"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.11/nap-darwin-arm64"
      sha256 "294d09c4ff225d98dc6fac4656b81685298e77301f847c26b9db5c0411c42403"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.11/nap-linux-amd64"
      sha256 "44ce8ea0b964662371314d97664cd69f727d7ce95280eda353935a5e288dcaed"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.11/nap-linux-arm64"
      sha256 "6d7397be5c64ee2960ff6bd2508148f7bfd0e52d03832e417a7079add24b62d8"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
