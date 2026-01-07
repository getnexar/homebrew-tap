class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.0/nap-darwin-amd64"
      sha256 "268df161573c86c839e095941f8080c6e852fa0e2861c4a8a84ed8d9fd0e5b93"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.0/nap-darwin-arm64"
      sha256 "588e359afc3f368b9ee413549717d79155eddb60a517a7020dc1fb9f20f5d98f"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.0/nap-linux-amd64"
      sha256 "a14795e96777e287f56224abacfb1f4636a4f20afc908b62c684080834384cad"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.0/nap-linux-arm64"
      sha256 "04318dd8d3d50e2591706018a86b15cfb86451ab11ec5dd0bd3bffb1bf0cf8d3"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
