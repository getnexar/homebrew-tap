class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.15/nap-darwin-amd64"
      sha256 "2faa19d5a22c2f353741b3ce8b218a99dc9211b553eb1f14c01128d89d95ac09"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.15/nap-darwin-arm64"
      sha256 "06edd9efbed085bdbb74a27818efcc8c17ada260e1ac9c77c89b216c67c013c0"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.15/nap-linux-amd64"
      sha256 "42744fdaa1da86d7bad6577189e61b626d10b081b39fd275073db9257792938a"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.15/nap-linux-arm64"
      sha256 "f44c919bdae20a3923310822f71cc3256c35e44fcabfd37108ab6bc098fedb8c"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
