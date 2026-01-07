class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.4/nap-darwin-amd64"
      sha256 "fe7b48c56d968262f2365127f3c55b273cc3e76bf54e4ef2ff8a849d1c0f35d9"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.4/nap-darwin-arm64"
      sha256 "688f3ce512d32cc5522fb897a535a94b3b244edbbb60b4c94a12094261ac90e0"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.4/nap-linux-amd64"
      sha256 "f072a1c07c74b310fd032c036c03f63e611d12fc54620bc05013d04d761145bd"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.4/nap-linux-arm64"
      sha256 "471d67eb8b516fe810d2027ff0bd0f8c1ad5a8d1684965eada68f2251dc90abf"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
