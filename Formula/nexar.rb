class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.7.1/nexar-darwin-amd64"
      sha256 "6a63e2fb296b7ce34949b5da6d0429808747f79ae97ca59609bb92f6fe6068c1"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.7.1/nexar-darwin-arm64"
      sha256 "03910a89a9cda1deabc2aee2fb67c4087f203426c4d5e69d2e043b7befe24cfa"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.7.1/nexar-linux-amd64"
      sha256 "37e852be5cb6306c2b68cd02788f8ca86d6cebe5ca84e9618f6d3f1705f420b4"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.7.1/nexar-linux-arm64"
      sha256 "f5473ad484e8d59df2c7afd510f212e6d7fc032509f2eb58a479fe77d98b9fb9"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
