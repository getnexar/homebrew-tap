class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.7/nap-darwin-amd64"
      sha256 "bb5775a2fa097cde8c0e2b36fee57946c91fe9d5cb9df5a35a9c5bcd9e5663ad"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.7/nap-darwin-arm64"
      sha256 "d2a06601de735d37628faf7645e4fd41dd42a457cce8aa1fdc869d34f8776df5"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.7/nap-linux-amd64"
      sha256 "12efcfd5ead7346fcd205da57aa33c23359af02816b8265fd6722c10dece49fa"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.7/nap-linux-arm64"
      sha256 "cc43fa7c3297073e30c8c7a7ee888e83c2e11edb57a1ffe348f02baeea2c4872"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
