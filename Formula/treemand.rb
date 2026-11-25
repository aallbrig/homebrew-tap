class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.20.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.20.2/treemand_darwin_amd64.tar.gz"
      sha256 "5a7bce389f86b74d7756df4e8a562809916a42b360663c7ebe902e440e378bfc"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.20.2/treemand_darwin_arm64.tar.gz"
      sha256 "2482ca2616e98e1cb74138ac24014d119451577b01955f548914b01dcf806f70"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.20.2/treemand_linux_amd64.tar.gz"
      sha256 "3118e578f86d229ccf2890e6c4a104d1e438ff5ebcd8155110a356e37fd80675"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.20.2/treemand_linux_arm64.tar.gz"
      sha256 "d21d44163c9e241bf716f0a6a7a817fd9e5ac121d0fff28441f4f405a102c1aa"

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
