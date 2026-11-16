class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.2/treemand_darwin_amd64.tar.gz"
      sha256 "e121231019fffb35c15124a8da7464590e49a11f8d3a295f6bb168d92452ec1a"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.2/treemand_darwin_arm64.tar.gz"
      sha256 "f88d1ae493c9dba02ca55078fc7f49e4abcd632a6f806c062b97cf1c150e2dcc"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.2/treemand_linux_amd64.tar.gz"
      sha256 "b5ec8c2d51ab19bdcd0954320520f4f3223a33d0448e386bad8b5f6e9c54393f"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.2/treemand_linux_arm64.tar.gz"
      sha256 "70911846b33afcbb545b0dc455ed007dd16df817fa860cf07e692f9a9f0fe215"

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
