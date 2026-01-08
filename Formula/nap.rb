class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.1.0/nap-darwin-amd64"
      sha256 "5f11ab01f9b14330620bf8b6d8291092e3dd534075a5522079487709cc91a430"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.1.0/nap-darwin-arm64"
      sha256 "2e43169d3d4ffa160931eb6989468f46b4a1a233882de6b612d18ce6a85b202d"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.1.0/nap-linux-amd64"
      sha256 "c6e7caf070730450793f3d718d079dd3e355092541a5c9f92ebf426db008f96f"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.1.0/nap-linux-arm64"
      sha256 "2b53a60e13b5ad33a5fe086e00904008431eb157799eb1348dd49dc30e6e2387"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
