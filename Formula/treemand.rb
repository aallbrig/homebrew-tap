class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.15.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.2/treemand_darwin_amd64.tar.gz"
      sha256 "268cc717fec31f63d3abafee4393bd3f217035ba45159ca290fb34590c2cea50"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.2/treemand_darwin_arm64.tar.gz"
      sha256 "d083d7d5075e6fa786f17814b46dc9f0a3a7dd05ef2609741d93da0e5df6a9fa"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.2/treemand_linux_amd64.tar.gz"
      sha256 "a247ad577bbc032f3de14d9c0939318b858358a0714f4c7a5bbc0bcf4950d8f5"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.2/treemand_linux_arm64.tar.gz"
      sha256 "d8e6b41ef3e18963e7a524e385740afd72abd6bb29967a627110ce053f31704c"

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
