class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.6/nap-darwin-amd64"
      sha256 "255d16fe9ecbd5b267971319614a96f272d49b8c49626c8ec366e1956dc3af1a"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.6/nap-darwin-arm64"
      sha256 "c931ff0f4bd3933206ed730187b5b3b3e67b5e15bc8bb9d5f72f58f373668a91"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.6/nap-linux-amd64"
      sha256 "c53169641b1a47be5d2478c93dccf6c21ef81260b6c3954587c2068ccac42b5d"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.6/nap-linux-arm64"
      sha256 "136a038da2ffd279792ecd4dc07a28ca9fc9e1e537faac8e00fe09fbac0713a5"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
