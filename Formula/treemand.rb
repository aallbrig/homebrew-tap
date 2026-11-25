class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.20.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.20.3/treemand_darwin_amd64.tar.gz"
      sha256 "d757253c24c2c89e5e2bbca9dd33857c6da4431940c1e39c19edbf24ee211310"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.20.3/treemand_darwin_arm64.tar.gz"
      sha256 "e841cf9a378bd4f7bc03d53f6e8523535163f9a4546026ffc03137230abf43fc"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.20.3/treemand_linux_amd64.tar.gz"
      sha256 "abf1c1f7e239db6a30cfcc61990275bda02aeaefa9c90f8ac1b665ac2144b8d3"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.20.3/treemand_linux_arm64.tar.gz"
      sha256 "77ea7150e5c028dd32537ed367b0681e9f9ab2ff523f09d71b3914903cf74387"

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
