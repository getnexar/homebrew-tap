class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.2/nap-darwin-amd64"
      sha256 "af06557823eb56001f89cb01a7babd6296436a3670284c1f53def9fe01b78f8d"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.2/nap-darwin-arm64"
      sha256 "13cddabada7177f82b323f5f82e08873da9ea3f3f3ec668cda9a985f487653e4"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.2/nap-linux-amd64"
      sha256 "47e744ad5144e8c1383f5af46ed2ee4a3cf1560f6ea394e0166725a722a76bd3"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.2/nap-linux-arm64"
      sha256 "b09af9fa5ed4b08525ad06d577c9b2cb2406347d13b3fbbdb1220da3acdad49a"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
