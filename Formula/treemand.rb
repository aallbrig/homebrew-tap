class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.1/treemand_darwin_amd64.tar.gz"
      sha256 "2648095ca8f2d8ed526f98d89e71e6036c07f961db46024c123cbe8356d737e6"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.1/treemand_darwin_arm64.tar.gz"
      sha256 "ad2284193ee3e2c6d83ff316aaeb374712f8ebbdb3049ac9bf8e1f8a6de9dd07"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.1/treemand_linux_amd64.tar.gz"
      sha256 "175eac0cff206d407cdef36f4601ccd7d6a4a1c38db7132f1f58ecf24f4c3de0"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.1/treemand_linux_arm64.tar.gz"
      sha256 "cbad519bbc95262fe713639bcb41f173309f43e2f710bbe2acff3d5f930f333e"

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
