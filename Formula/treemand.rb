class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.19.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.4/treemand_darwin_amd64.tar.gz"
      sha256 "ad4f87b73a363c590f02d0efae10540a89ddfd7b6303b21a976d03786c19f780"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.4/treemand_darwin_arm64.tar.gz"
      sha256 "234b5abf1fafd653737d474f7c3d679fffbfc2d48d64486118371e82eee473aa"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.4/treemand_linux_amd64.tar.gz"
      sha256 "81adcb400a90cc89ffde2a35ee2b522adeb6df5d719aac0b4d5a2e84199bf884"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.4/treemand_linux_arm64.tar.gz"
      sha256 "608324324bbd1cc468a4f25a997ab1cc524f32d307d9f808d1e7e05b59cd09e4"

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
