class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.3.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.10/treemand_darwin_amd64.tar.gz"
      sha256 "96359b7e3b0aac45f021ced1b30558fd6c3383360bdb39f549913ad10294d200"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.10/treemand_darwin_arm64.tar.gz"
      sha256 "747cfbee9b857492be37c76b453fbea65cdc2716c6ed7ba6252bdcb95c5cd7d2"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.10/treemand_linux_amd64.tar.gz"
      sha256 "2b0cfe963b1d8ab33f43ba37bda59cd5d380a94628be385c302669987566088f"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.10/treemand_linux_arm64.tar.gz"
      sha256 "645d86270f42588a8fa335a9d11811f618be5f8d7a368f312e35eb2f8c8e282e"

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
