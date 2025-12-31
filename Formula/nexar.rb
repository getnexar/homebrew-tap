class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.16.0/nexar-darwin-amd64"
      sha256 "b0867f3e30cc1494afa132ab227e9eea3339f70b594dc6866805525e748a421a"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.16.0/nexar-darwin-arm64"
      sha256 "587679c402debfea351543a630e6f8f1a097c40564af428e097923f9c7911ba0"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.16.0/nexar-linux-amd64"
      sha256 "6dec9d36fd4aa26b92136a1c2f26b6a039a27223f6c7f8bf59d7ee50b495cc61"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.16.0/nexar-linux-arm64"
      sha256 "810efd0cb4952f972b0c9fa29deed092dc5405f13f0fcebb805fc3d20e7f4297"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
