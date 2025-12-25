class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-darwin-amd64"
      sha256 "ebb0497707d4b018229f1ff55908324584f23346d73e2a7ca62f9cac3d8a4abe"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-darwin-arm64"
      sha256 "43966138bb492d8f0b6015f42812d2ee7c641113728ba2155f55286935743b57"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-linux-amd64"
      sha256 "be26055d79f89c2693cff40c73baf6ed6e5c4825e5b20714d959a5a9c2ac17a4"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-linux-arm64"
      sha256 "f5e774e5975174a340d6fd8b65852826056bf3cf70be8e94d76f522e5a452a73"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
