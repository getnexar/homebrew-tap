class Nap < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "3.3.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.16/nap-darwin-amd64"
      sha256 "79c603a23c583ccfe5612f5b814783825996c264c739a834a547a9a3083470e6"

      def install
        bin.install "nap-darwin-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.16/nap-darwin-arm64"
      sha256 "f6d61b756309ecfce709b72676089668ea0bc7af442f01bcd03e2476c307e5f8"

      def install
        bin.install "nap-darwin-arm64" => "nap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.16/nap-linux-amd64"
      sha256 "41221b4f924d48dc36cd9d95700ff2b76cd354453bbfacef9d623f5fbf677e42"

      def install
        bin.install "nap-linux-amd64" => "nap"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v3.3.16/nap-linux-arm64"
      sha256 "18c035f76299eac87eef9a8b742c690c71e2a8c27baf6af5e5e34efec201a35b"

      def install
        bin.install "nap-linux-arm64" => "nap"
      end
    end
  end

  test do
    assert_match "nap", shell_output("#{bin}/nap --help")
  end
end
