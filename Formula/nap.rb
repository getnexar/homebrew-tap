class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.10/nap-darwin-amd64"
      sha256 "223bec30d0d860148ec2b6122361d3817ba9780c3ef0aa621ff3d3dee36b2a16"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.10/nap-darwin-arm64"
      sha256 "912ed9ec9d402a3dd8ec1a20373a2a40811155668c486b54a1480393bab6a743"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.10/nap-linux-amd64"
      sha256 "3bddf0a9fe7c085dc78b2a526876fd2957cc5e933741f31485f2449c443f2167"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.10/nap-linux-arm64"
      sha256 "c1049ab27fee02687c7f0d394a2f90e0af11caf32c07a486493a7a10449f9909"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
