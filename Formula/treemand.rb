class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.15.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.3/treemand_darwin_amd64.tar.gz"
      sha256 "3ad2eab781497ae2e176eae179cfddee987baf8d6c32b8d73e3b2c0748670803"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.3/treemand_darwin_arm64.tar.gz"
      sha256 "f7e06989523b5e019d23309f1b07c10660cfa488872ab21f1d0167f0720a43bf"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.3/treemand_linux_amd64.tar.gz"
      sha256 "73c6af148889168957c7338e84b006fdccdb3cc11ae78522a8e31111ad949574"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.3/treemand_linux_arm64.tar.gz"
      sha256 "c1f634ff2ebb2242f6625d0848aac07f2845a44e469e90cc9fbf5c2b8b39c158"

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
