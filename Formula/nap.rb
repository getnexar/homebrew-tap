class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.8/nap-darwin-amd64"
      sha256 "52174572bed9260c8d097c4568d859d874c3025dba593587a20a03fa60bf5241"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.8/nap-darwin-arm64"
      sha256 "543055d162f3071e050f7f9adb20abec384075f7d6c67ccc22b9ebd557952986"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.8/nap-linux-amd64"
      sha256 "a24e97c4032e7275c64642effa3784b5e8194d9f1501141deca4a600aea8ae14"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.0.8/nap-linux-arm64"
      sha256 "3c418d9f55fc67fc8ed746a28a0910c2e45d817f1d61de7bad0bb31287e8b037"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
