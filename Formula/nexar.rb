class Nexar < Formula
  desc "CLI tool for deploying apps to Nexar Platform"
  homepage "https://www.corp.nexars.ai"
  version "1.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-darwin-amd64"
      sha256 "1a158e5c1e1b3cc652911ac0a97cc12e6269087634bd094387c1e6a1965e99b6"

      def install
        bin.install "nexar-darwin-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-darwin-arm64"
      sha256 "12681a2fc266183be504b9357ccbb4d654265d087353c9c7a887434061258343"

      def install
        bin.install "nexar-darwin-arm64" => "nexar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-linux-amd64"
      sha256 "1300e36d029894210c71da3bcafbe1881136909d7bf5200d97ae21aff59f0388"

      def install
        bin.install "nexar-linux-amd64" => "nexar"
      end
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/nexar-cli-releases/v1.12.1/nexar-linux-arm64"
      sha256 "675c5f5ff69df0bed85c5a2270af09a55b2c5c6c4eb3ef17ab63ec193514e7b4"

      def install
        bin.install "nexar-linux-arm64" => "nexar"
      end
    end
  end

  test do
    assert_match "nexar", shell_output("#{bin}/nexar --help")
  end
end
