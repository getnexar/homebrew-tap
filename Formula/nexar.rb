class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.1.0/nexar-darwin-amd64"
      sha256 "b9be35557f8e452639e65f401331896291965a9d047e4d83a5cd7831cd7e2bee"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.1.0/nexar-darwin-arm64"
      sha256 "1a0a50c5f66b6bdf686baa4646def2c198b28c1f08a27b7974b26e84b5e6bc12"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.1.0/nexar-linux-amd64"
      sha256 "3927d8654c245e017ea8a40cb4139b67a200d0a2f201d28080209c470b23e24e"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v2.1.0/nexar-linux-arm64"
      sha256 "62a6ecc33630662a7562e8da5cdaf4f099a3811fe30012a4de0ea7056df4873b"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
