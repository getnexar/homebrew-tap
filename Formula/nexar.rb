class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.10.0/nexar-darwin-amd64"
      sha256 "8062012c38124b967d1645fbe6b2093fa1948f0b7b73fd9d35ebeac25b555ce5"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.10.0/nexar-darwin-arm64"
      sha256 "e546aab2931e1d1e9dc694a47e9d0131b99f60d35c2d2c1df5923dfead90120e"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.10.0/nexar-linux-amd64"
      sha256 "1b1d34a840c0d3286e5ac62d79b04873b4f3acbaf3c1db027499a126a9c8c4d7"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.10.0/nexar-linux-arm64"
      sha256 "e5ada09a7fa755fa3e85faf2279d4c037ddd29c377b586c3cc54e8efaa8e785d"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
