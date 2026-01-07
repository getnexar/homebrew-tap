class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.3/nap-darwin-amd64"
      sha256 "829e587475ad9aeab7953bcc9541f9823f2fdab3791af5b573b47c1004cd45fc"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.3/nap-darwin-arm64"
      sha256 "62f99bac328db34bbdfdec9b2211b596567ed3bc0dd2aac68f2a611fb3b6fc7b"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.3/nap-linux-amd64"
      sha256 "f1951bea24afcd9b74e9b8b87dc7a931b97f87488a1058e1b6bbc41d2704f5db"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.3/nap-linux-arm64"
      sha256 "db42a2b84cff9a13518db79f888f7cd63f60118bbec74c271d5bd3ddaf96849d"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
