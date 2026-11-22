class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.10.1/treemand_darwin_amd64.tar.gz"
      sha256 "a115112157188f38eaf6fa3834d45d36b2da56bb0fec251b32dcbf5d8fdccda1"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.10.1/treemand_darwin_arm64.tar.gz"
      sha256 "faf8ecdfb76f3a2b56fc99b3297e7d51135832c042beab256b70bc81c4042a5b"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.10.1/treemand_linux_amd64.tar.gz"
      sha256 "4967f1c7de6db8a3f11608fef093ffc208c67e12d37bdf59777af0ca4cdd9fcb"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.10.1/treemand_linux_arm64.tar.gz"
      sha256 "8050c689a61a95d79f5eeada5a255aaa4ab45276c997120485a4be2f6a65929d"

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
