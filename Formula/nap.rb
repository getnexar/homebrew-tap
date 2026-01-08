class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.1.0/nap-darwin-amd64"
      sha256 "5fc797ccab9455899fa475fbcb9e35387b42a106da2b021f33c3a092ac863995"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.1.0/nap-darwin-arm64"
      sha256 "43d81d08d13fad34e639af852b6d28e5cee774879e76dc6f6ac5d43e42164362"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.1.0/nap-linux-amd64"
      sha256 "4ffeb0739b72a872237e18af5770638858d0fcececab9ce13afa3f34efac3515"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.1.0/nap-linux-arm64"
      sha256 "6d0cce37bcdbbb5d91e0576df374db461399082fcbdd0125118077691be5ce44"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
