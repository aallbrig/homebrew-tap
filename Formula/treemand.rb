class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.15.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.4/treemand_darwin_amd64.tar.gz"
      sha256 "4f47a7d20010f378634e5d305b8b9c6701028ad4181bebc333e3c166ef1ca92b"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.4/treemand_darwin_arm64.tar.gz"
      sha256 "9c0a2497fc719dc288c4a0da640f39183510a8d57584029014653e8e88ec7374"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.4/treemand_linux_amd64.tar.gz"
      sha256 "081446b6c9920c98c3ae2e03c7f8f848ce21bd27754d328adc60a03e4826f7be"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.4/treemand_linux_arm64.tar.gz"
      sha256 "16704c5f309b55e8b601c68faffdaaa5a835730f6b2115904381f318d086a4fd"

      def install
        bin.install "treemand_linux_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treemand version")
  end
end
