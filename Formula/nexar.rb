class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.0.0/nexar-darwin-amd64"
      sha256 "beb249ea2d98ddb08f873c783c9cd645690dc7ed88519f7f87fc618a68f5b384"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.0.0/nexar-darwin-arm64"
      sha256 "8e3c842f9eb0c940f779ff61c3593499bfa93cdd789ea5f62b60bf5f9f303e74"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.0.0/nexar-linux-amd64"
      sha256 "14f6da9190dbd0440568acd551f4c560d772def83fdd594117609cb52bf6354e"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.0.0/nexar-linux-arm64"
      sha256 "89d9c7606497ab71ce0acdb348a3a5023ed417974a011a27afc722dc96538d8e"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
