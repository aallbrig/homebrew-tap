class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.15.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.1/treemand_darwin_amd64.tar.gz"
      sha256 "aa43999cbee3e91ab20f202ff69e705b709b781f6b159abf03430d779362c74d"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.1/treemand_darwin_arm64.tar.gz"
      sha256 "3edab5125a9d3dba2655ab75f7f482434ef52c0d65836aeb3ee155c8513b3f53"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.1/treemand_linux_amd64.tar.gz"
      sha256 "b388922e7cbbb6b088637e5cc1dfd01f1cb8c9a874409e2a3176ccbf47e01e38"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.1/treemand_linux_arm64.tar.gz"
      sha256 "0676b73e02e6978f113a63e87df27d028e057ca77786bef963be7aa77face5fd"

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
