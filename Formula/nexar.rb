class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-darwin-amd64"
      sha256 "377856eae3090e558b5e4aebe0e8da04170db8ba207145594e7e839f78e5ba39"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-darwin-arm64"
      sha256 "558a43282bd2de142ee7635fa516444f09a4a9fcedb71c7b5041fb809ac43fcd"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-linux-amd64"
      sha256 "a88cb0e1582704cc818f0ffb35fdb3ce66ad00d12ea0bb4fce2d03a5d9fb4688"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-linux-arm64"
      sha256 "669d90aa76de059e93aff8af91ebeea7677bd2df8ed66ef17b16a744fb597768"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
