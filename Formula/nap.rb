class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.1/nap-darwin-amd64"
      sha256 "e50a17c2755242cd3355d00ebbd158e3f603c320f91c24a8d665a053b9d41d81"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.1/nap-darwin-arm64"
      sha256 "78e363130aab469eaccb344acbd374cb9a7b9bffb808fa534d7f9b94569c022e"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.1/nap-linux-amd64"
      sha256 "d1eced018673e87981ac1945fb4afe983f0dd71f272d0aaa1f77fe61c56d31db"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.1/nap-linux-arm64"
      sha256 "d5053ae3d98c4a8cf80e9a7d9b4bf5743bb060ae79fbaca9b4320fd3c1b5466a"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
