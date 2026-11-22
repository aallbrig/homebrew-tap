class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.9.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.5/treemand_darwin_amd64.tar.gz"
      sha256 "c516c4065e644817e58da9e318f148d74c9422a70fa7b59da6d418cd317441a1"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.5/treemand_darwin_arm64.tar.gz"
      sha256 "27866a12474f12b951371015357259f2fea1c272326b63030514fb87acc66c04"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.5/treemand_linux_amd64.tar.gz"
      sha256 "30950fa215d329c0d7db1d4cdf24811043e634471726ec4c1757242483890350"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.5/treemand_linux_arm64.tar.gz"
      sha256 "64387a3a46c2d0706ccff62fd4dcb70b6aede4ff7badefd6a96392b4851cfac9"

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
