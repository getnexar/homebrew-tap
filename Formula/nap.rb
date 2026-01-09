class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.3/nap-darwin-amd64"
      sha256 "aa5508d81a73b5be97c01492e79ca8e119884b136cfebd3d7dc0da53dcac467f"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.3/nap-darwin-arm64"
      sha256 "44f39ace8f122e55ce4cfebfa3c6f4ca33c08174f3d2bad089eff993b4cb9875"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.3/nap-linux-amd64"
      sha256 "f40ae3f2dda886c98b3a891e0cc79899894663871ff655169657fa8975c29139"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.2.3/nap-linux-arm64"
      sha256 "78eebf5ae6d7c5374b785a037fe3c8adf76943078cb1754be92281f95e557ed3"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
